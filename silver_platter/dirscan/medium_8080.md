# FFUF Report

  Command line : `ffuf -u http://10.10.61.28:8080/FUZZ -w /usr/share/SecLists/Discovery/Web-Content/directory-list-2.3-medium.txt -of md -o dirscan/medium_8080.md`
  Time: 2025-01-23T14:11:39&#43;01:00

  | FUZZ | URL | Redirectlocation | Position | Status Code | Content Length | Content Words | Content Lines | Content Type | Duration | ResultFile | ScraperData | Ffufhash
  | :- | :-- | :--------------- | :---- | :------- | :---------- | :------------- | :------------ | :--------- | :----------- | :------------ | :-------- |
  | website | http://10.10.61.28:8080/website | http://10.10.61.28:8080/website/ | 1163 | 302 | 0 | 1 | 1 |  | 111.545025ms |  |  | b53dc48b
  | console | http://10.10.61.28:8080/console | /noredirect.html | 3644 | 302 | 0 | 1 | 1 |  | 178.399383ms |  |  | b53dce3c
  