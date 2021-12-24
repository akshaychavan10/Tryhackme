## Introduction

**What is Active Directory**

- Active Directory is a collection of machines and servers connected inside of domains, that are a collective part of a bigger forest of domains, that make up the Active Directory network. 

**Why use Active Directory**

- it allows for the control and monitoring of their user's computers through a single domain controller. 
- It allows a single user to sign in to any computer on the active directory network and have access to his or her stored files and folders in the server, as well as the local storage on that machine. 

## physical Active Directory

- physical Active Directory is the servers and machines on-premise, these can be anything from domain controllers and storage servers to domain user machines.

**Domain Controllers**

- A domain controller is a Windows server that has Active Directory Domain Services (AD DS) installed and has been promoted to a domain controller in the forest. 
- center of Active Directory.
- they control the rest of the domain.

*Task of domain controller*

- holds the AD DS data store 
- handles authentication and authorization services 
- replicate updates from other domain controllers in the forest
- Allows admin access to manage domain resources

**AD DS Data Store**

- AD DS holds the databases and processes needed to store and manage directory information such as users, groups, and services. 

- It Contains the `NTDS.dit` - a database that contains all of the information of an Active Directory domain controller as well as password hashes for domain users
- Stored by default in `%SystemRoot%\NTDS`
- accessible only by the domain controller

## The Forest

- The forest is what defines everything
- without the forest all of the other trees and domains would not be able to interact. 

![img](https://i.imgur.com/EZawnqU.png)

- A forest is a collection of one or more domain trees inside of an Active Directory network. 

*Forest contain below parts*

- Trees - A hierarchy of domains in Active Directory Domain Services
- Domains - Used to group and manage objects 
- Organizational Units (OUs) - Containers for groups, computers, users, printers and other OUs
- Trusts - Allows users to access resources in other domains
- Objects - users, groups, printers, computers, shares
- Domain Services - DNS Server, LLMNR, IPv6
- Domain Schema - Rules for object creation


## User and Groups

**Users Overview**

- Domain Admins - This is the big boss: they control the domains and are the only ones with access to the domain controller.
- Service Accounts (Can be Domain Admins) - These are for the most part never used except for service maintenance, they are required by Windows for services such as SQL to pair a service with a service account
- Local Administrators - These users can make changes to local machines as an administrator and may even be able to control other normal users, but they cannot access the domain controller
- Domain Users - These are your everyday users. They can log in on the machines they have the authorization to access and may have local administrator rights to machines depending on the organization.

**Groups Overview**

- Security Groups - These groups are used to specify permissions for a large number of users

```
    Domain Controllers - All domain controllers in the domain
    Domain Guests - All domain guests
    Domain Users - All domain users
    Domain Computers - All workstations and servers joined to the domain
    Domain Admins - Designated administrators of the domain
    Enterprise Admins - Designated administrators of the enterprise
    Schema Admins - Designated administrators of the schema
    DNS Admins - DNS Administrators Group
    DNS Update Proxy - DNS clients who are permitted to perform dynamic updates on behalf of some other clients (such as DHCP servers).
    Allowed RODC Password Replication Group - Members in this group can have their passwords replicated to all read-only domain controllers in the domain
    Group Policy Creator Owners - Members in this group can modify group policy for the domain
    Denied RODC Password Replication Group - Members in this group cannot have their passwords replicated to any read-only domain controllers in the domain
    Protected Users - Members of this group are afforded additional protections against authentication security threats. See http://go.microsoft.com/fwlink/?LinkId=298939 for more information.
    Cert Publishers - Members of this group are permitted to publish certificates to the directory
    Read-Only Domain Controllers - Members of this group are Read-Only Domain Controllers in the domain
    Enterprise Read-Only Domain Controllers - Members of this group are Read-Only Domain Controllers in the enterprise
    Key Admins - Members of this group can perform administrative actions on key objects within the domain.
    Enterprise Key Admins - Members of this group can perform administrative actions on key objects within the forest.
    Cloneable Domain Controllers - Members of this group that are domain controllers may be cloned.
    RAS and IAS Servers - Servers in this group can access remote access properties of users

```

- Distribution Groups - These groups are used to specify email distribution lists. As an attacker these groups are less beneficial to us but can still be beneficial in enumeration

##  Trusts and Policies 

- Trusts and policies go hand in hand to help the domain and trees communicate with each other and maintain "security" inside of the network.

**Domain Trusts Overview**

- Trusts are a mechanism in place for users in the network to gain access to other resources in the domain.
- in some environments trusts can be extended out to external domains and even forests in some cases.

![img](https://i.imgur.com/4uGI3bF.png)

- two types of trusts that determine how the domains communicate
1. directional : The direction of the trust flows from a trusting domain to a trusted domain

2. Transitive : The trust relationship expands beyond just two domains to include other trusted domains


**Domain Policies Overview**

- policies dictate how the server operates and what rules it will and will not follow.
- it is act as a rulebook for Active  Directory that a domain admin can modify and alter as they deem necessary to keep the network running smoothly and securely. 

## Active Directory Domain services + Authentication

- The Active Directory domain services are the core functions of an Active Directory network.
- they allow for management of the domain, security certificates, LDAPs, and much more. 

**Domain Services Overview**

- Domain services are services that the domain controller provides to the rest of the domain or tree.

some default domain services: 

- LDAP - Lightweight Directory Access Protocol; provides communication between applications and directory services
- Certificate Services - allows the domain controller to create, validate, and revoke public key certificates
- DNS, LLMNR, NBT-NS - Domain Name Services for identifying IP hostnames


**Domain Authentication Overview**

- Kerberos - The default authentication service for Active Directory uses ticket-granting tickets and service tickets to authenticate users and give users access to other resources across the domain.
- NTLM - default Windows authentication protocol uses an encrypted challenge/response protocol

## AD in Cloud

**Azure AD Overview**

- Azure acts as the middle man between your physical Active Directory and your users' sign on. This allows for a more secure transaction between domains, making a lot of Active Directory attacks ineffective.

![img](https://i.imgur.com/J8q52i2.png)

**Cloud Security Overview**


| Windows Server AD | Azure AD |
|-------------------|----------|
|LDAP |	Rest APIs |
|NTLM |	OAuth/SAML |
|Kerberos |	OpenID |
|OU Tree |	Flat Structure |
|Domains and Forests |	Tenants |
|Trusts |	Guests |