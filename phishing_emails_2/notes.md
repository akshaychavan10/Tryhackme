some technique used in phishing emails.


**Spoofed email address**
**URL shortening services**
**HTML to impersonate a legitimate brand**


1. This is an unusual email recipient address. This is not the email address associated with the Yahoo account. 
2. This mismatch should immediately stand out. The sender's details (service@paypal.com) don't match the sender's email address (gibberish@sultanbogor.com). 
3. The subject line hints that you made a purchase or a transaction of some sort. If you don't recall this account, then it will grab your attention. This social engineering tactic is to prompt you to interact with the email with haste. 

![img](https://assets.tryhackme.com/additional/phishing2.0/email1-details.png)

Now lets look at email body.

![img](https://assets.tryhackme.com/additional/phishing2.0/email-body-2b.png)

when we look for button `cancel the order` by source code we can see The link uses URL shortening services.

![img](https://assets.tryhackme.com/additional/phishing2.0/cancel-order.png)

**there are online tools that we can use to let us know the destination of a shortened URL**

**Pixel tracking**

All of those obnoxious marketing emails that crowd your inbox aren’t just pushing a product. They’re also tracking whether you’ve opened the email, when you opened it, and where you were at the time by using software like Mailchimp to embed tracking software into the message.

How does it work? A single tracking pixel is embedded in the email, usually (but not always) hidden within an image or a link. When the email is opened, code within the pixel sends the info back to the company’s server. 

There is also a simple, basic step you can take to avoid trackers: stop your email from automatically loading images, since images are where the majority of these pixels hide.

[Resource](https://www.theverge.com/22288190/email-pixel-trackers-how-to-stop-images-automatic-download)


**urgency**

**HTML to impersonate a legitimate brand**

![img](https://assets.tryhackme.com/additional/phishing2.0/email6-phish1b.png)

you can notice the webpage is onenote but url is not associated with onenote or microsoft.


**Attachments**

**Credential harvesting**

**Poor grammar and/or typos**

***

*additional resources*


https://www.knowbe4.com/phishing

https://www.itgovernance.co.uk/blog/5-ways-to-detect-a-phishing-email

https://cheapsslsecurity.com/blog/10-phishing-email-examples-you-need-to-see/

https://phishingquiz.withgoogle.com