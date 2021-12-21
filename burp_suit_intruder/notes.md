Intruder is Burp Suite's in-built fuzzing tool

![img](https://tryhackme-images.s3.amazonaws.com/user-uploads/5d9e176315f8850e719252ed/room-content/4d8d5926216e90c046d9d8ee1025bb6f.png)

- position : allows us to select an Attack Type,as well as configure where in the request template we wish to insert our payloads.

- payload : allows us to select values to insert into each of the positions we defined in the position sub-tab.

- resource pool : its pro feature,  run various types of automated tasks in the background

- options :  configure attack behaviour ( eg : how to respond 3xx responses)

***

## Position

Positions tell Intruder where to insert payloads 

![img](https://tryhackme-images.s3.amazonaws.com/user-uploads/5d9e176315f8850e719252ed/room-content/c286bd89e92aab284460ab9302b3b18c.png)

**Attack type**

- Sniper
- Battering ram
- Pitchfork
- Cluster bomb

### sniper

The sniper attack uses only one payload set, and it replaces only one position at a time. It loops through the payload set, first replacing only the first marked position with the payload and leaving all other positions to their original value. After its done with the first position, it continues with the second position.

eg we have three word in wordlist. burp , suit, intruder, and we have two selected postion. `username=§pentester§&password=§Expl01ted§`

|Request Number	| Request Body |
|---|-----------|--------------|
|1  | username=burp&password=Expl01ted |
| 2 | username=suite&password=Expl01ted|
| 3 | username=intruder&password=Expl01ted|
| 4 | username=pentester&password=burp|
| 5 | username=pentester&password=suite|
| 6 | username=pentester&password=intruder|

 Intruder Sniper will make as `requests = numberOfWords * numberOfPositions`.

### Battering Ram 

it take one wordlist and put same payload in every postion.

eg : `username=§pentester§&password=§Expl01ted§` and we have three word in wordlist, burp, suit and intruder.

| Request Number | Request Body|
| 1 | username=burp&password=burp |
| 2 | username=suite&password=suite |
| 3 | username=intruder&password=intruder |

### Pitchfork 

it uses one payload set(wordlist) per position. and iterates through them all at once.

### Cluster Bomb.

Cluster bomb allows us to choose multiple payload sets: one per position however Cluster bomb iterates through each payload set individually, making sure that every possible combination of payloads is tested.

eg : wordlists are.

username : joel, harriet, alex.
password : J03l, Emma1815, Sk1ll.

| Request Number | Request Body|
| 1 | username=joel&password=J03l|
| 2 | username=harriet&password=J03l|
| 3 | username=alex&password=J03l|
| 4 | username=joel&password=Emma1815|
| 5 | username=harriet&password=Emma1815|
| 6 | username=alex&password=Emma1815|
| 7 | username=joel&password=Sk1ll|
| 8 | username=harriet&password=Sk1ll|
| 9 | username=alex&password=Sk1ll|

## payloads

**payload set** :defind payload sets and payload types.
**payload option** : upload wordlist or custimise it.
**Payload Processing**: allows us to define rules to be applied to each payload in the set before being sent to the target.
**Payload Encoding** : allows us to override the default URL encoding options that are applied automatically

