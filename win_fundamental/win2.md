This module will attempt to provide an overview of some other utilities available within the Windows operating system and different methods to access these utilities.

## System Configuration utility (`MSConfig`)

its used for advanced troubleshooting, and its main purpose is to help diagnose startup issues. to open system configuration open the search menu and type `msconfig`

The utility has five tabs across the top.
General : we can select what devices and services for Windows to load upon boot. The options are: Normal, Diagnostic, or Selective.
https://assets.tryhackme.com/additional/win-fun2/msconfig1.png

Boot : we can define various boot options for the Operating System. 
https://assets.tryhackme.com/additional/win-fun2/msconfig2.png

Services : lists all services configured for the system regardless of their state (running or stopped).
https://assets.tryhackme.com/additional/win-fun2/msconfig3.png

Startup : As you can see, Microsoft advises using Task Manager (`taskmgr`) to manage (enable/disable) startup items. The System Configuration utility is **NOT** a startup management program. 
https://assets.tryhackme.com/additional/win-fun2/msconfig4.png

Tools : There is a list of various utilities (tools) in the Tools tab that we can run to configure the operating system further. There is a brief description of each tool to provide some insight into what the tool is for. 
https://assets.tryhackme.com/additional/win-fun2/msconfig5.png
Notice the Selected command section.To run a tool, we can use the command to launch the tool via the run prompt, command prompt, or by clicking the `Launch` button. 


## UAC Settings

Refer win1.md to know more about UAC settings. 
we can change UAC settings using `System configuration utility`.

## Computer management `compmgmt` 

you can find `compmgmt` in  `System Configuration utility`.

Three primary section
1. system tools
2. storage
3. Services and Applications

### system tools
https://assets.tryhackme.com/additional/win-fun2/compmgmt1.png

**Task Scheduler** : we can create and manage common tasks that our computer will carry out automatically at the times we specify. (like cronjob on linux)

**Event Viewer.** : Event Viewer allows us to view events that have occurred on the computer. (used in audit and diagnose, and investigation)
https://assets.tryhackme.com/additional/win-fun2/event-viewer.png

there are five type of event that can be logged.
https://assets.tryhackme.com/additional/win-event-logs/five-event-types.png

The standard logs are visible under Windows Logs. Below is a table from docs.microsoft.com providing a brief description for each.
https://assets.tryhackme.com/additional/win-event-logs/standard-event-logs.png

**Shared Folders** : where you will see a complete list of shares and folders shared that others can connect to. 

**Local Users and Groups** : refer `wind1` `lusrmgr.msc.`

**Performance** : you'll see a utility called Performance Monitor (`perfmon`)
Perfmon is used to view performance data either in real-time or from a log file.
https://assets.tryhackme.com/additional/win-fun2/perfmon.png

**Device Manager** : allows us to view and configure the hardware, such as disabling any hardware attached to the computer.

### Storage

1. Windows Server Backup 
2. Disk Management. : Disk Management is a system utility in Windows that enables you to perform advanced storage tasks.

	1. Set up a new drive
	2. Extend a partition
	3. Shrink a partition
	4. Assign or change a drive letter

### Services and Applications

Here you can do more than enable and disable a service, such as view the Properties for the service.
https://assets.tryhackme.com/additional/win-fun2/service.png


## system information

You can find system information tool `msinfo32` in `System Configuration utility`

what is `msinfo32` or system information tool : 
This tool gathers information about your computer and displays a comprehensive view of your hardware, system components, and software environment, which you can use to diagnose computer issues

**Hardware Resources** : The information displayed in Hardware Resources is not for the average computer user. if you want to learn more [visit](https://docs.microsoft.com/en-us/windows-hardware/drivers/kernel/hardware-resources#:~:text=Hardware%20resources%20are%20the%20assignable,of%20bus%2Drelative%20memory%20addresses.)

**Components** : you can see specific information about the hardware devices installed on the computer. 

**Software Environment** : you can see information about software baked into the operating system and software you have installed. Other details are visible in this section as well, such as the Environment Variables and Network Connections. 

Another method to view environment variables is 

```
Control Panel > System and Security > System > Advanced system settings > Environment Variables 

OR 

Settings > System > About > system info > Advanced system settings > Environment Variables

```

## Resource monitor

Resource Monitor (resmon) in `System Configuration utility`.

- Resource Monitor displays per-process and aggregate CPU, memory, disk, and network usage information
- In addition to providing details about which processes are using individual file handles and modules.
- start, stop, pause, and resume services, and close unresponsive applications from the user interface. 
- Resmon has four sections:CPU , Disk , Network , Memory


## Windows Registry 

Registry editor `regedt32.exe` in `System Configuration utility`

is a central hierarchical database used to store information necessary to configure the system for one or more users, applications, and hardware devices.

The registry contains information that Windows continually references during operation, such as:

    Profiles for each user
    Applications installed on the computer and the types of documents that each can create
    Property sheet settings for folders and application icons
    What hardware exists on the system
    The ports that are being used

One way is to use the Registry Editor (`regedit`).
https://assets.tryhackme.com/additional/win-fun2/regedit.png


## commands

https://ss64.com/nt/
