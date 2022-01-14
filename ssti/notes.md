Server Side Template Injection (SSTI) is a web exploit which takes advantage of an insecure implementation of a template engine.

**What is a template engine?**

A template engine allows you to create static template files which can be re-used in your application.

Note: The template engines themselves aren't vulnerable, rather an insecure implementation by the developer.

## Detection 

few places to look such as url or input filed(also check for hidden inputs) . 

find endpoint where web app take input from you and render this input somewhere in webpage.

Example :

![img](https://i.imgur.com/9KxE97M.png)

First check where it breaks 

eg : webpage : `http://10.10.88.147:5000/profile/testing${{` throw error at 

```
Internal Server Error

The server encountered an internal error and was unable to complete your request. Either the server is overloaded or there is an error in the application.

```

- Now we detect what character caused error next we find what template engin is used.


![img](https://gblobscdn.gitbook.com/assets%2F-L_2uGJGU7AVNRcqRvEi%2F-M7O4Hp6bOFFkge_yq4G%2F-M7OCvxwZCiaP8Whx2fi%2Fimage.png)

- Green arrow - The expression evaluated (i.e 42)
- Red arrow - The expression is shown in the output (i.e `${7*7}`)

***

After having identified the template engine, we now need to learn its syntax.

You can use Documentation for learn syntax. 
here is link for jinja2 syntax [link](https://jinja.palletsprojects.com/en/2.11.x/)

```
How to start a print statement
How to end a print statement
How to start a block statement
How to end a block statement

```

***

To get rce try payload all things payloads.