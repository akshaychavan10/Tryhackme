# FFUF Report

  Command line : `ffuf -u http://10.10.208.172/concrete5/index.php/FUZZ -w /usr/share/wordlists/dirb/common.txt -of md -o dirscan/indexphprecursive.md`
  Time: 2021-12-07T10:35:33-05:00

  | FUZZ | URL | Redirectlocation | Position | Status Code | Content Length | Content Words | Content Lines | Content Type | ResultFile |
  | :- | :-- | :--------------- | :---- | :------- | :---------- | :------------- | :------------ | :--------- | :----------- |
  |  | http://10.10.208.172/concrete5/index.php/ |  | 1 | 200 | 22231 | 5761 | 425 | text/html; charset=UTF-8 |  |
  | account | http://10.10.208.172/concrete5/index.php/account |  | 247 | 200 | 9581 | 2378 | 260 | text/html; charset=UTF-8 |  |
  | blog | http://10.10.208.172/concrete5/index.php/blog |  | 646 | 200 | 19858 | 7361 | 380 | text/html; charset=UTF-8 |  |
  | Contact | http://10.10.208.172/concrete5/index.php/Contact |  | 1014 | 200 | 15259 | 2713 | 302 | text/html; charset=UTF-8 |  |
  | contact | http://10.10.208.172/concrete5/index.php/contact |  | 1013 | 200 | 15259 | 2713 | 302 | text/html; charset=UTF-8 |  |
  | dashboard | http://10.10.208.172/concrete5/index.php/dashboard | http://10.10.208.172/concrete5/index.php/login | 1156 | 302 | 428 | 60 | 12 | text/html; charset=UTF-8 |  |
  