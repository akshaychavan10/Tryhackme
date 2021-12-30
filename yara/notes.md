what is yara

- he pattern matching swiss knife for malware researchers.
-  Yara rules are frequently written to determine if a file is malicious or not, based upon the features - or patterns - it presents.

- your rule is only as effective as your understanding of the patterns you want to search for.

`yara` cmd required two argument.
1. the rule file we created
2. Name of file, directory, or process ID to use the rule for.

eg : `yara myrule.yar somedirectory`


- every rule must have a name and condition

Example:

```
rule examplerule {
	condition: true
}

```

here rule name is `examplerule` and we have a condition `condition`.

## Expanding yara rules

### Conditions 

**meta**

- This section of a Yara rule is reserved for descriptive information by the author of the rule.
- eg : you can use `desc`, short for description, to summarise what your rule checks for. 
- this section does not influence the rule itself, its similar like comments in programming.

**Strings**

- You can use strings to search for specific text or hexadecimal in files or programs.

![img](https://i.imgur.com/TzxFGbd.png)

next we need condition to make rule valid.

![img](https://assets.tryhackme.com/additional/yara/helloworld_checker_con1.png)

if any file has the string "Hello World!" then the rule will match. ( it will only match if "Hello World!" is found and will not match if "hello world" or "HELLO WORLD.")

*condition: any of them*

if we have multiple strings rule and we want to match any of them strings then we use `any of them` condition.

![img](https://i.imgur.com/TGFw8sH.png)

other than `true` and `any of them` there are some important conditions like.

- `<= less than or equal to`
- `>= more than or equal to`
- `!= not equal to`

Example : 

![img](https://assets.tryhackme.com/additional/yara/helloworld_checker.png)

**Combining keywords**

- and 
- or 
- not

![img](https://i.imgur.com/jkADv0i.png)

**Comprehensive resource to write rules**

[webiste](https://yara.readthedocs.io/en/stable/writingrules.html)

**cheatsheet**

![img](https://miro.medium.com/max/875/1*gThGNPenpT-AS-gjr8JCtA.png)


## Yara Modules

- yara modules allows you to improve the technicality of your Yara rules ten-fold.

### cuckoo

- Cuckoo Sandbox is an automated malware analysis environment. 
- module allows you to generate Yara rules based upon the behaviours discovered from Cuckoo Sandbox.
- As this environment executes malware, you can create rules on specific behaviours such as runtime strings and the likes.

### Python PE

- Python's PE module allows you to create Yara rules from the various sections and elements of the Windows Portable Executable (PE) structure.

PE : this structure is the standard formatting of all executables and DLL files on windows. Including the programming libraries that are used. 

## Other tools and yara

- you not need to create yara rules from scratch , there are plenty of yara resources like : 

[webiste](https://github.com/InQuest/awesome-yara)

### Loki

- LOKI is a free open source IOC (Indicator of Compromise) scanner
- detection is based on 4 methods:
	1. File Name IOC Check
    2. Yara Rule Check (we are here)
    3. Hash Check
    4. C2 Back Connect Check

### Thor

- Its multi-platform IOC AND YARA scanner.
- THOR is geared towards corporate customers. THOR Lite is the free version.

### fenrir

- Fenrir is a bash script; it will run on any system capable of running bash

### YAYA

- YAYA is a new open-source tool to help researchers manage multiple YARA rule repositories. 
-  YAYA starts by importing a set of high-quality YARA rules and then lets researchers add their own rules, disable specific rulesets, and run scans of files."

## Loki

- as a security analyst you may need to research various threat intelligence reports, blog postings, etc. and gather information on the latest tactics and techniques used in the wild, past or present. 
- Typically in these readings, IOCs (hashes, IP addresses, domain names, etc.) 
- based on this IOC you create yara rules.
- sometimes you encountered something that's new and you not seen this in past.Using tools such as Loki, you will need to add your own rules based on your threat intelligence gathers or findings from an incident response engagement

***

First cmd you can run after installing loki is `--update`. (This will add the signature-base directory, which Loki uses to scan for known evil.)

syntax:

`python loki.py -p Path_for_file`

## yarGen

- yarGen is a generator for YARA rules.

You can feed the suspicious file to yargen and it generate yara file.

```
python3 yarGen.py -m /home/cmnatic/suspicious-files/file2 --excludegood -o /home/cmnatic/suspicious-files/file2.yar 

```
`-m` : is the path to the files you want to generate rules for
`--excludegood` :  force to exclude all goodware strings (these are strings found in legitimate software and can increase false positives)
`-o` location & name you want to output the Yara rule.


## valhalla

- VALHALLA boosts your detection capabilities with the power of thousands of hand-crafted high-quality YARA rules.
- Its online tool.