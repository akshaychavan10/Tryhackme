## file system

**file system structure**

- Logical drives (Ex: Local Disk C)
- Folders (these are the folders that come by default. Ex: Documents, Downloads, Music)
- Files

**some folders located on the C drive and their role**

1. PerfLogs - Stores the system issues and other reports regarding performance
2. Program Files and Program Files (x86) - Is the location where programs install unless you change their path (Ex: Choosing to install software on D drive)
3. Users - In this folder are stored the users created. It also stores users generated data (Ex: Saving a file on your Desktop)
4. Windows - It's the folder which basically contains the code to run the operating system and some utility tools (we'll talk about them later)

**File Permissions**

- Users
- Groups

Permission that can be set :

- Full control : allows the user/users/group/groups to set the ownership of the folder, set permission for others, modify, read, write, and execute files.


- Modify : allows the user/users/group/groups to modify, read, write, and execute files.

- Read & execute : allows the user/users/group/groups to read and execute files.

- List folders content : allows the user/users/group/groups to list the contents (files, subfolders, etc) of a folder.

- Read : only allows the user/users/group/groups to read files.

- Write : allows the user/users/group/groups to write data to the specified folder (automatically set when "Modify" right is checked).

- Special permissions


*A tool you can use to check the files or folder permissions is `icacls`. You can also use `icals` to  set ownership of the folder, set, remove or deny permissions.*

![img](https://i.imgur.com/g0b0Pa8.png)

```
I - permission inherited from the parent container

F - full access (full control)

M - Modify right/access

OI - object inherit

IO - inherit only

CI - container inherit

RX - read and execute

AD - append data (add subdirectories)

WD - write data and add files

```

## Authentication

Authentication is a process for verifying the identity of a person

**Local authentication**

- Local authentication is done using the Local Security Authority (LSA).
- LSA is a protected subsystem that keeps track of the security policies and the accounts that are on a computer system. 
- It also maintains information about all aspects of local security on a computer.

**Type of AD**
1. On-Premise Active Directory (AD)
2. Azure Active Directory (AAD)

**Authentication on AD**

*NTLM / NTLM 2*
- NTLM uses a challenge-response sequence of messages between a client and a server system. 
-  NTLM  provides authentication based on a challenge-response authentication scheme.
-  It does not provide data integrity or data confidentiality protection for the authenticated network connection.

![img](https://i.imgur.com/z7VT6PM.png)

*LDAP / LDAPS*

- The main difference between LDAP and LDAPS is that LDAPS support encryption and therefore the credentials are not sent in plain text across the network.
-  Using LDAP/LDAPS the user's workstation sends the credentials using an API to the Domain Controller in order to validate them and be able to log in.

![img](https://i.imgur.com/Vep5s0C.png)

*KERBEROS*

-  Kerberos uses symmetric-key cryptography and requires trusted third-party authorization to verify user identities.

![img](https://i.imgur.com/nnsV5NM.png)

**Authentication on Azure Active Directory**

*SAML (Security Assertion Markup Language)*

- It  is a type of Single Sign-On (SSO) standard. 
- It defines a set of rules/protocols that allow users to access web applications with a single login. 
- This is possible because those applications (referred to as “Service Providers”) all trust the systems that verify users’ identities

*OAUTH 2.0*

OAuth 2.0 is a standard that apps use to provide client applications with access.

- The authorization server, which is the server that issues the access token.
- The resource owner, normally your application's end-user, that grants permission to access the resource server with an access token.
- The client, which is the application that requests the access token, and then passes it to the resource server.
- The resource server, which accepts the access token and must verify that it is valid. In this case, this is your application.

*OpenID Connect*

- OpenID Connect is an authentication standard built on top of OAuth 2.0. 
-  It adds an additional token called an ID token.
- it uses simple JSON Web Tokens (JWT). 