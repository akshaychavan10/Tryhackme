## Install the Sysinternals Suite 

The Sysinternals tool(s) can be downloaded and run from the local system, or the tool(s) can be run from the web. 

you can download the entire suite or just the tool(s) you need.

If you wish to download a tool or two but not the entire suite, you can navigate to the Sysinternals Utilities Index page, `https://docs.microsoft.com/en-us/sysinternals/downloads/`

If you wish to download the Sysinternals Suite, you can download the zip file from `https://docs.microsoft.com/en-us/sysinternals/downloads/sysinternals-suite`.

## Using Sysinternals Live

Sysinternals Live is a service that enables you to execute Sysinternals tools directly from the Web without manually downloading them.

Simply enter a tool's Sysinternals Live path into command prompt as `live.sysinternals.com/<toolname>` or `\\live.sysinternals.com\tools\<toolname>`


eg : `\\live.sysinternals.com\tools\procmon.exe`

prerequties to run live sysinternals :

Before using this we need to install WebDav client.
open powershell :

`Install-WindowsFeature WebDAV-Redirector –Restart`

The server needs to reboot for the installation to complete.

Verify the Installation.

`Get-WindowsFeature WebDAV-Redirector | Format-Table –Autosize`


- Make sure the WebClient service is running (win 10 webclient comes pre installed)

check the status of webclient in powershell by :

`get-service webclient`

![img](https://assets.tryhackme.com/additional/sysinternals/win10-webclient1b.png) 

as you can see it's stopped.

to start the  servervice : `start-service webclient`

![img](https://assets.tryhackme.com/additional/sysinternals/win10-webclient2.png)

- Make sure Network Discovery is enabled

In windows go to `Network and Sharing Center` --> click on `Change advanced sharing settings`  --> and select `Turn on network discovery`

Now you can run the tool from cmd line.

![img](https://assets.tryhackme.com/additional/sysinternals/win2019-method1.png)

***

Each task within this room will focus on 1 or 2 tools per section (maybe more).

Again, the goal is to introduce you to the Sysinternals tools, but there are far too many tools to go into each tool in depth.

***


## File and Disk Utilities 

### Sigcheck

- Sigcheck is a command-line utility that shows file version number, timestamp information, and digital signature details, including certificate chains.

- It also includes an option to check a file’s status on VirusTotal

[official tool guide](https://docs.microsoft.com/en-us/sysinternals/downloads/sigcheck)

**How to use it**

if you want to check files in `C:\Windows\System32`

`sigcheck -u -e C:\Windows\System32`

```
-u "If VirusTotal check is enabled, show files that are unknown by VirusTotal or have non-zero detection, otherwise show only unsigned files."
-e "Scan executable images only (regardless of their extension)

```

check above link to comprehensive use.

### Streams

**ADS**

- Alternate Data Streams (ADS) is a file attribute specific to Windows NTFS (New Technology File System).

- Every file has at least one data stream ($DATA) and ADS allows files to contain more than one stream of data.


The NTFS file system provides applications the ability to create alternate data streams of information. 

![img](https://assets.tryhackme.com/additional/sysinternals/streams2.png)

### SDelete

it allows you to delete one or more files and/or directories, or to cleanse the free space on a logical disk.

SDelete (Secure Delete) implemented the DOD 5220.22-M (Department of Defense clearing and sanitizing protocol).

![img](https://assets.tryhackme.com/additional/sysinternals/sdelete.png)

You can review this tool more in-depth by visiting its Sysinternals SDelete
[page](https://docs.microsoft.com/en-us/sysinternals/downloads/sdelete)

***

## Networking Utilities 

### TCPView

TCPView is a Windows program that will show you detailed listings of all TCP and UDP endpoints on your system, including the local and remote addresses and state of TCP connections

t Windows has a built-in utility that provides the same functionality. This tool is called `Resource Monitor`.

To open this tool, from cmd line type : `resmon`.

Now back to TCPView. 

The below image shows the default view for TCPView.

![img](https://assets.tryhackme.com/additional/sysinternals/tcpview1.png) 

##  Process Utilities 

### Autoruns

This program shows you what programs are configured to run during system bootup or login and when you start various built-in Windows applications like Internet Explorer, Explorer and media players.

### ProcDump

ProcDump is a command-line utility whose primary purpose is monitoring an application for CPU spikes and generating crash dumps during a spike that an administrator or developer can use to determine the cause of the spike

![img](https://assets.tryhackme.com/additional/sysinternals/procdump.png)

### Process Explorer 