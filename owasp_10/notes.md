Injection
Broken Authentication
Sensitive Data Exposure
XML External Entity
Broken Access Control
Security Misconfiguration
Cross-site Scripting
Insecure Deserialization
Components with Known Vulnerabilities
Insufficent Logging & Monitoring

***

## xxe

- An XML External Entity (XXE) attack is a vulnerability that abuses features of XML parsers/data. 

*two type*

1. inband :  is the one in which the attacker can receive an immediate response to the XXE payload.
2. out-of-band(oob) : there is no immediate response from the web application and attacker has to reflect the output of their XXE payload to some other file or their own server.

**what is xml**

XML (eXtensible Markup Language) is a markup language that defines a set of rules for encoding documents in a format that is both human-readable and machine-readable. It is a markup language used for storing and transporting data. 

**DTD**

- DTD stands for Document Type Definition. 
- DTD defines the structure and the legal elements and attributes of an XML document.

payloads:

```
<?xml version="1.0"?>
<!DOCTYPE root [<!ENTITY read SYSTEM 'file:///etc/passwd'>]>
<root>&read;</root>

```

***

## Insecure desialization

Insecure Deserialization is a vulnerability which occurs when untrusted data is used to abuse the logic of an application

any application that stores or fetches data where there are no validations or integrity checks in place for the data queried or retained. A few examples of applications of this nature are:

- E-Commerce Sites
- Forums
- API's
- Application Runtimes (Tomcat, Jenkins, Jboss, etc


**Object**

- real worl entity
- have a state and behaviour

**serialization**

- Serialisation is the process of converting objects used in programming into simpler, compatible formatting for transmitting between systems or networks for further processing or storage.

**deseralization**

is the reverse of this; converting serialised information into their complex form - an object that the application will understand.


Example : Say you have a password of "password123" from a program that needs to be stored in a database on another system. To travel across a network this string/output needs to be converted to binary. Of course, the password needs to be stored as "password123" and not its binary notation. Once this reaches the database, it is converted or deserialised back into "password123" so it can be stored.

**How it Occurs**

insecure deserialization occurs when data from an untrusted party (I.e. a hacker) gets executed because there is no filtering or input validation; the system assumes that the data is trustworthy and will execute it no holds barred.

