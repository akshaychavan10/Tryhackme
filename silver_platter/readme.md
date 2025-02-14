machine ip : 10.10.61.28
machine description : 

```
Think you've got what it takes to outsmart the Hack Smarter Security team? They claim to be unbeatable, and now it's your chance to prove them wrong. Dive into their web server, find the hidden flags, and show the world your elite hacking skills. Good luck, and may the best hacker win!
But beware, this won't be a walk in the digital park. Hack Smarter Security has fortified the server against common attacks and their password policy requires passwords that have not been breached (they check it against the rockyou.txt wordlist - that's how 'cool' they are). The hacking gauntlet has been thrown, and it's time to elevate your game. Remember, only the most ingenious will rise to the top. 

May your code be swift, your exploits flawless, and victory yours!

Make sure you wait a full 5 minutes after you start the machine before scanning or doing any enumeration. This will make sure all the services have started. 
```

---

## Recon
### start with nmap :

open ports : 22,80,8080
- 22/tcp   open  ssh        OpenSSH 8.9p1 Ubuntu 3ubuntu0.4 (Ubuntu Linux; protocol 2.0)
- 80/tcp   open  http       nginx 1.18.0 (Ubuntu)
- 8080/tcp open  http-proxy

### port 80 webpage : 

info from port 80 webpage : 
- possible username : Tyler Ramsbey
- from contact tab : If you'd like to get in touch with us, please reach out to our project manager on Silverpeas. His username is "scr1ptkiddy".

### port 8080 webpage : 
404 - not found
/website : forbidden with status 302
/console : nodirect.html , 404 - not found