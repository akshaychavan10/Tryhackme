Misconfigured file upload functionality in php.

`system()` or `shell_exec()` are often disabled through PHP directives defined in the php.ini configuration file but developer sometimes miss `dl()` which allows you to dynamically load a particular PHP extension.

php-extention : A PHP extension is a specially formed library or plug-in that provides a function that can be used by many applications.example : `lib.so`

***

`putenv()` : we can modify the environment variables, allowing us to assign the value we want to the variable `LD_PRELOAD`. 

LD_PRELOAD : `LD_PRELOAD` will allow us to pre-load a `.so` library before the rest of the libraries, so that if a program uses a function of a library (libc.so for example), it will execute the one in our library instead of the one it should. In this way, we can hijack or "hook" functions, modifying their behaviour at will.

we use `Chankro` tool from github.

https://github.com/TarlogicSecurity/Chankro


using chankro we generate php scripts that will act as dropper , it will create a `.so` library and binary(which contain our reverse shell code) , and this will later call `putenv()` or `mail()` to launch the process.

`python chankro.py --arch 64 --input c.sh --output tryhackme.php --path /var/www/html`

```
--arch = Architecture of system victim 32 o 64.
--input = file with your payload to execute
--output = Name of the PHP file you are going to create; this is the file you will need to upload.
--path = It is necessary to specify the absolute path where our uploaded PHP file is located. For example, if our file is located in the uploads folder DOCUMENTROOT + uploads. 

```

upload this file on target system.