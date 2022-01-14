a defender can take to help protect the users from falling victim to a malicious email. 

- Email Security (SPF, DKIM, DMARC)
- SPAM Filters (flags or blocks incoming emails based on reputation)
- Email Labels (alert users that an incoming email is from an outside source)
- Email Address/Domain/URL Blocking (based on reputation or explicit denylist)
- Attachment Blocking (based on the extension of the attachment)
- Attachment Sandboxing (detonating email attachments in a sandbox environment to detect malicious activity)
- Security Awareness Training (internal phishing campaigns)

***

## SPF

Sender Policy Framework
It is used to authenticate the sender of an email. 

With an SPF record in place, Internet Service Providers can verify that a mail server is authorized to send email for a specific domain. 

An SPF record is a DNS TXT record containing a list of the IP addresses that are allowed to send email on behalf of your domain.

![img](https://assets.tryhackme.com/additional/phishing4/dmarcian-spf.png)

SPF record look like : `v=spf1 ip4:127.0.0.1 include:_spf.google.com -all`

```
v=spf1 -> This is the start of the SPF record
ip4:127.0.0.1 -> This specifies which IP (in this case version IP4 & not IP6) can send mail
include:_spf.google.com -> This specifies which domain can send mail
-all -> non-authorized emails will be rejected

```

[spf_syntax](https://dmarcian.com/spf-syntax-table/)

[What is the difference between SPF ~all and -all?](https://dmarcian.com/what-is-the-difference-between-spf-all-and-all/)

[dmarcian's SPF Surveyor](https://dmarcian.com/spf-survey/)

[create your own spf records](https://dmarcian.com/create-spf-record/)

***

## DKIM (DomainKeys Identified Mail) 

DKIM stands for DomainKeys Identified Mail 

It is used for the authentication of an email that’s being sent.

SPF, DKIM is an open standard for email authentication that is used for DMARC alignment.

DKIM record look like

```language
v=DKIM1; k=rsa; p=MIIBIjANBgkqhkiG9w0BAQEFAAOCAQ8AMIIBCgKCAQEAxTQIC7vZAHHZ7WVv/5x/qH1RAgMQI+y6Xtsn73rWOgeBQjHKbmIEIlgrebyWWFCXjmzIP0NYJrGehenmPWK5bF/TRDstbM8uVQCUWpoRAHzuhIxPSYW6k/w2+HdCECF2gnGmmw1cT6nHjfCyKGsM0On0HDvxP8I5YQIIlzNigP32n1hVnQP+UuInj0wLIdOBIWkHdnFewzGK2+qjF2wmEjx+vqHDnxdUTay5DfTGaqgA9AKjgXNjLEbKlEWvy0tj7UzQRHd24a5+2x/R4Pc7PF/y6OxAwYBZnEPO0sJwio4uqL9CYZcvaHGCLOIMwQmNTPMKGC9nt3PSjujfHUBX3wIDAQAB
```

```
v=DKIM1-> This is the version of the DKIM record. This is optional. 
k=rsa -> This is the key type. The default value is RSA. RSA is an encryption algorithm (cryptosystem).
p= -> This is the public key that will be matched to the private key, which was created during the DKIM setup process. 

```

##  DMARC (Domain-Based Message Authentication, Reporting, and Conformance) 

- it is a open source standard.
- it uses concept called alignment to tie the result of two other open source standards (SPF and DKIM) to the content of email.
- putting a DMARC record into place for your domain will give you feedback that will allow you to troubleshoot your SPF and DKIM configurations if needed.

example of DMARC record :

```
v=DMARC1; p=quarantine; rua=mailto:postmaster@website.com

v=DMARC1 -> Must be in all caps, and it's not optional
p=quarantine -> If a check fails, then an email will be sent to the spam folder (DMARC Policy)
rua=mailto:postmaster@website.com -> Aggregate reports will be sent to this email address
```

DMARC Checker : https://dmarcian.com/domain-checker/

## S/MIME (Secure/Multipurpose Internet Mail Extensions) 

- S/MIME (Secure/Multipurpose internet Mail Extensions) is a widely accepted protocol for sending digitally signed and encrypted messages.

Two main components :

1. Digital Signatures
2. Encryption

```
    If Bob wishes to use S/MIME, then he'll need a digital certificate. This digital certificate will contain his public key. 
    With this digital certificate, Bob can "sign" the email message with his private key. 
    Mary can then decrypt Bob's message with Bob's public key. 
    Mary will do the same (send her certificate to Bob) when she replies to his email, and Bob complete the same process on his end.
    Both will now have each other's certificates for future correspondence. 

```

## SMTP Status Codes 

[wireshark traffic filter](https://www.wireshark.org/docs/dfref/s/smtp.html)

[statuscode](https://www.mailersend.com/blog/smtp-codes)