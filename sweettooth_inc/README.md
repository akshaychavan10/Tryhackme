start with nmap

8086


8086
InfluxDB database found.

ffuf :
/ping
/query
/status

version : `X-Influxdb-Version: 1.3.0`

found user from : /debug/requests : `o5yY6yya`


```
7788764472,
                            "uzJk6Ry98d8C"


```
```
Databases list:                                                                                                       
                                                                                                                      
1) creds                                                   
2) docker                                                  
3) tanks                                                   
4) mixer                                                   
5) _internal  

```
try to find default creds.

install influx client in linux.

there is auth bypass vul lets try.(testing names.txt from seclist)

***

111 rpcbind.


***
privs

Linux version 3.16.0-11-amd64

Is this a container? .......... Looks like we're in a Docker container

```
root         1  0.0  0.2  20048  2744 ?        Ss   14:11   0:00 /bin/bash -c chmod a+rw /var/run/docker.sock && servi
ce ssh start & /bin/su uzJk6Ry98d8C -c '/initializeandquery.sh & /entrypoint.sh influxd'
root         8  0.0  0.2  44764  2700 ?        S    14:11   0:00 /bin/su uzJk6Ry98d8C -c /initializeandquery.sh & /ent
rypoint.sh influxd


```