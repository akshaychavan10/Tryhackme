# FFUF Report

  Command line : `ffuf -u http://10.10.1.157:31111/FUZZ -w /usr/share/wordlists/dirb/common.txt -of md -o dirscan/gitea.md`
  Time: 2022-01-18T00:15:13-05:00

  | FUZZ | URL | Redirectlocation | Position | Status Code | Content Length | Content Words | Content Lines | Content Type | ResultFile |
  | :- | :-- | :--------------- | :---- | :------- | :---------- | :------------- | :------------ | :--------- | :----------- |
  |  | http://10.10.1.157:31111/ |  | 1 | 200 | 9506 | 693 | 292 | text/html; charset=UTF-8 |  |
  | admin | http://10.10.1.157:31111/admin | /user/login | 286 | 302 | 34 | 2 | 3 | text/html; charset=utf-8 |  |
  | avatars | http://10.10.1.157:31111/avatars | /avatars/ | 536 | 302 | 32 | 2 | 3 | text/html; charset=utf-8 |  |
  | debug | http://10.10.1.157:31111/debug |  | 1196 | 200 | 160 | 18 | 5 | text/html; charset=utf-8 |  |
  | explore | http://10.10.1.157:31111/explore | /explore/repos | 1536 | 302 | 37 | 2 | 3 | text/html; charset=utf-8 |  |
  | issues | http://10.10.1.157:31111/issues | /user/login | 2123 | 302 | 34 | 2 | 3 | text/html; charset=utf-8 |  |
  | notifications | http://10.10.1.157:31111/notifications | /user/login | 2699 | 302 | 34 | 2 | 3 | text/html; charset=utf-8 |  |
  | test | http://10.10.1.157:31111/test |  | 4008 | 200 | 10273 | 839 | 338 | text/html; charset=UTF-8 |  |
  