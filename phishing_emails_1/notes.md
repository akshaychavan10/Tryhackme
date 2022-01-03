email address makes ups of 

1. User Mailbox (or Username)
2. @
3. domain.

there are two part of email.

1. header (contain info about email)
2. body (text of html formatted text)


## Email Headers

- From - the sender's email address
- Subject - the email's subject line
- Date - the date when the email was sent
- To - the recipient's email address

- X-Originating-IP - The IP address of the email was sent from (this is known as an X-header)
- Smtp.mailfrom/header.from - The domain the email was sent from (these headers are within Authentication-Results)
- Reply-To - This is the email address a reply email will be sent to instead of the From email address

![img](https://assets.tryhackme.com/additional/phishing1/email-headers-1b.png)

You can also ger comprehensive information about email header by clicking on `view raw message`.

![img](https://assets.tryhackme.com/additional/phishing1/email-raw-headers-menu-2.png)

[Resource](https://mediatemple.net/community/products/all/204643950/understanding-an-email-header)

## Types of phishing

Different types of malicious emails can be classified as one of the following:

- Spam - unsolicited junk emails sent out in bulk to a large number of recipients. The more malicious variant of Spam is known as MalSpam.

- Phishing -  emails sent to a target(s) purporting to be from a trusted entity to lure individuals into providing sensitive information. 

- Spear phishing - takes phishing a step further by targeting a specific individual(s) or organization seeking sensitive information.  

- Whaling - is similar to spear phishing, but it's targeted specifically to C-Level high-position individuals (CEO, CFO, etc.), and the objective is the same. 

- Smishing - takes phishing to mobile devices by targeting mobile users with specially crafted text messages. 

- Vishing - is similar to smishing, but instead of using text messages for the social engineering attack, the attacks are based on voice calls. 

**typical characteristics phishing emails have in common**


The sender email name/address will masquerade as a trusted entity (email spoofing)

The email subject line and/or body (text) is written with a sense of urgency or uses certain keywords such as Invoice, Suspended, etc. 

The email body (HTML) is designed to match a trusting entity (such as Amazon)

The email body (HTML) is poorly formatted or written (contrary from the previous point)

The email body uses generic content, such as Dear Sir/Madam. 

Hyperlinks (oftentimes uses URL shortening services to hide its true origin)

A malicious attachment posing as a legitimate document


***

**BEC**

A BEC is when an adversary gains control of an internal employee's account and then uses the compromised email account to convince other internal employees to perform unauthorized or fraudulent actions. 