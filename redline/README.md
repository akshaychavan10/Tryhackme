Memory analysis of endpoints:

tools : 

volatility : dig deep but takes loot of time.
redline : 10 km high view of wind,linux and mac os endpoints.

## Redline

you can use redline for :

- Collect registry data (Windows hosts only)
- Collect running processes
- Collect memory images (before Windows 10)
- Collect Browser History
- Look for suspicious strings
- And much more!

***

## Data Collection

three ways or option to collect data:

Standard Collector - this method configures the script to gather a minimum amount of data for the analysis. this is fastest method to collect the data you need.

Comprehensive Collector - this method configures the script to gather the most data from your host for further analysis. used in full analysis of system.

IOC Search Collector (Windows only) - this method collects data that matches with the Indicators of Compromise (IOCs) that you created with the help of IOC Editor. 


when we open redline we presented above three options.  lets dive in to `standard collector`

https://assets.tryhackme.com/additional/redline101/targetos.png

first we have to select the target. windows,linux or mac

then we had section :`review script configuration`. this section is important becuase `edit your script` presented with the set of data to choose to collect from the host. there will be five tabs : `Memory`, `Disk`, `System`, `Network`, and `Other`.


**Memory**

https://assets.tryhackme.com/additional/redline101/memoryyy.png

configure the script to collect memory data such as process listings, drivers enumeration (Windows hosts only), and hook detection (versions before Windows 10) etc.

**Disk**

https://assets.tryhackme.com/additional/redline101/diskkk.png

This is where you can collect the data on Disks partitions and Volumes along with File Enumeration.

**System**

https://assets.tryhackme.com/additional/redline101/systemm.png

the system will provide you with the machine information

- Machine and operating system (OS) information
- Analyze system restore points (Windows versions before 10 only)
- Enumerate the registry hives (Windows only)
- Obtain user accounts (Windows and OS X only)
- Obtain groups (OS X only)
- Obtain the prefetch cache (Windows only) 


**Network**

Network Options supports Windows, OS X, and Linux platforms. You can configure the script to collect network information and browser history, which is essential when investigating the browser activities, including malicious file downloads and inbound/outbound connections.  

https://assets.tryhackme.com/additional/redline101/networkkk.png

**Other**

https://assets.tryhackme.com/additional/redline101/other.png

collect the data on different services and tasks running on the system, including the hashes.


***

Save this into the empty folder. after saving data go to folder you will see `RunRedlineAudit` file. this is executable script to collect data from the host. this script should run as `administrator`.

This process take 15-20 minutes to complete , after script finished you will notice a new file created `AnalysisSession1`.(in the session folder with the `.mans` extension) . double click to this file to import data in redline.


***

## The Redline interface

when data is imported you will be presented with this view

https://i.ibb.co/8YhfzHb/redlineee.png

On the left panel, you will see different types of Analysis Data; this is where you will perform information gathering and investigation process.

**system information** : you  will see the information about the machine, BIOS (Windows only), operating system, and user information.
**Processes** :  processes will contain different attributes such as Process Name, PID, Path, Arguments, Parent process, Username, etc. When you expand the Processes tab, there will be four sections: `Handles`, `Memory Sections`, `Strings`, and `Ports`.