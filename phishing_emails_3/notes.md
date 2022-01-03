## What info should we collect

- Sender email address
- Sender IP address
- Reverse lookup of the sender IP address
- Email subject line
- Recipient email address (this information might be in the CC/BCC field)
- Reply-to email address (if any)
- Date/time

next draw our attention to the email body and attachment(s) (if any). 

- Any URL links (if an URL shortener service was used, then we'll need to obtain the real URL link)
- The name of the attachment
- The hash value of the attachment (hash type MD5 or SHA256, preferably the latter

## Tools to analyse emails

Messageheader : tool from Google that can assist us with analyzing email headers

[messageheader](https://toolbox.googleapps.com/apps/messageheader/analyzeheader)

***

Message Header Analyzer: https://mha.azurewebsites.net/

***

mail header [mailheader](https://mailheader.org.)

***

IPinfo.io: [link](https://ipinfo.io/)

help you analyze information about the sender's IP address.

***

urlscan.io is a free service to scan and analyse websites. When a URL is submitted to urlscan.io, an automated process will browse to the URL like a regular user and record the activity that this page navigation creates. 

URLScan.io: [urlscan](https://urlscan.io/)


## attachments

after downloading attachments you can calculate hash and check it on site like

Talos File Reputation: https://talosintelligence.com/talos_file_reputation

VirusTotal: https://www.virustotal.com/gui/

## URL

you can grab all url manual (by copy link location) or you can use

URL Extractor: https://www.convertcsv.com/url-extractor.htm


## Malware sandbox

There are online tools and services where malicious files can be uploaded and analyzed to better understand what the malware was programmed to do. These services are known as malware sandboxes. 

Any.Run: https://app.any.run/

Hybrid Analysis: https://www.hybrid-analysis.com/

## Phishtool

is tool to automate the phishing analyses.

[link](https://www.phishtool.com/)