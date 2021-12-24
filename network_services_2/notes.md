## NFS

- Network File System
- allows a system to share directories and files with others over a network.
- By using NFS, users and programs can access files on remote systems almost as if they were local files.

**How it works**

- First, the client will request to mount a directory from a remote host on a local directory just the same way it can mount a physical device. 
-  The mount service will then act to connect to the relevant mount daemon using RPC. (Remote Procedure Call is a technique for building distributed systems. Basically, it allows a program on one machine to call a subroutine on another machine without knowing that it is remote.)

- The server checks if the user has permission to mount whatever directory has been requested. 
- It will then return a file handle which uniquely identifies each file and directory that is on the server.

If someone wants to access a file using NFS, an RPC call is placed to NFSD (the NFS daemon) on the server. This call takes parameters such as:

1. The file handle
2. The name of the file to be accessed
3. The user's, user ID
4. The user's group ID

**Enum**

list share : `showmount -e $ip`
mount to share : `sudo mount -t nfs IP:share /tmp/mount/ -nolock`

**privilege escalation with nfs**

- By default, on NFS shares- Root Squashing is enabled(for prevents anyone connecting to the NFS share from having root access to the NFS volume.)
- Remote root users are assigned a user “nfsnobody” when connected, which has the least local privileges.
- if root_squash is disabled we can create `SUID` binary for local privilege escalation.

```
NFS Access ->

Gain Low Privilege Shell ->

Upload Bash Executable to the NFS share -> use root account
cp /local/bash /tmp/mount/test/bash


Set SUID Permissions Through NFS Due To Misconfigured Root Squash ->
chmod +s bash
chmod +x bash

Login through SSH ->

Execute SUID Bit Bash Executable ->

ROOT ACCESS

```

## smtp

- Simple Mail Transfer Protocol(used for sending of emails)
- to use email service we need pair of protocol (smtp and pop/imap)
- Together they allow the user to send outgoing mail and retrieve incoming mail, respectively. 

```
smtp --> sending
pop/imap --> retrieve
```

**smtp server perform three basic function**

1. verifies who is sending emails through the SMTP server.
2. sends the outgoing mail
3. If the outgoing mail can't be delivered it sends the message back to the sender


*pop and imap**
- both used for retrieve email.
- pop : doesn't syn
- imap : syn between various devices.

**How does smtp work**

![img](https://raw.githubusercontent.com/polo-sec/writing/master/Security%20Challenge%20Walkthroughs/Networks%202/untitled.png)

- The mail user agent(gmail/outlook) connects to the SMTP server of your domain (eg : smtp.google.com).
-  initiates the SMTP handshake.connection works over the SMTP port- which is usually 25.once conection validate then smtp session start.

- The client first submits the sender, and recipient's email address- the body of the email and any attachments, to the server. 

- The SMTP server then checks whether the domain name of the recipient and the sender is the same.

- The SMTP server of the sender will make a connection to the recipient's SMTP server before relaying the email. If the recipient's server can't be accessed, or is not available- the Email gets put into an SMTP queue.

- Then, the recipient's SMTP server will verify the incoming email. It does this by checking if the domain and user name have been recognised. The server will then forward the email to the POP or IMAP server.

-  The E-Mail will then show up in the recipient's inbox.

### Enumeration

find version : `auxiliary/scanner/smtp/smtp_version`
find users : `auxiliary/scanner/smtp/smtp_enum`

there are also other scripts such as `smtp-user-enum` for enumaration.

***

## mysql

- it is a relational database management system (RDBMS) based on Structured Query Language (SQL). 
