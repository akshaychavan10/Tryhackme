## Task Manager

- built-in GUI-based Windows utility that allows users to see what is running on the Windows system.
- provides information on resource usage, such as how much CPU and memory are utilized by each process. 
- you can also kill a program/process using task manager.

**Task Manager**

![img](https://assets.tryhackme.com/additional/windows-processes/taskmanager-2.png)

Click on `More details` to get comprehensive look.

![img](https://assets.tryhackme.com/additional/windows-processes/taskmanager-3.png)

there are five tabs.
1. Processes
2. performance
3. Users
4. Details
5. Services

there are three categories

1. Apps
2. Background processes
3. Windows processes

columns :
to view more columns right click on any columns.

![img](https://assets.tryhackme.com/additional/windows-processes/taskmanager-4.png)

```
Type - Each process falls into 1 of 3 categories (Apps, Background process, or Windows process).
Publisher - Think of this column as the name of the author of the program/file.
PID - This is known as the process identifier number. Windows assigns a unique process identifier each time a program starts. If the same program has multiple processes running, each will have its own unique process identifier (PID).
Process name - This is the file name of the process. In the above image, the file name for Task Manager is Taskmrg.exe. 
Command line - The full command used to launch the process. 
CPU - The amount of CPU (processing power) used by the process.
Memory - The amount of physical working memory utilized by the process. 

```

**Task Manager is a powerful built-in Windows utility but lacks certain important information when analyzing processes, such as parent process information.**

That is where other utilities, such as `Process Hacker` and `Process Explorer`, come to the rescue.

Process hacker :

![img](https://assets.tryhackme.com/additional/windows-processes/processhacker.png)

Process Explorer :

![img](https://assets.tryhackme.com/additional/windows-processes/process-explorer.png)


## System

- The PID for System is always 4.
- The system “process” is a special kind of process that hosts threads that only run in kernel mode.
- system process run only in kernel mode.

what is kernal mode and user mode : 

**kernal mode** : 
All code that runs in kernel mode shares a single virtual address space. This means that a kernel-mode driver is not isolated from other drivers and the operating system itself. If a kernel-mode driver accidentally writes to the wrong virtual address, data that belongs to the operating system or another driver could be compromised. If a kernel-mode driver crashes, the entire operating system crashes.

**User mode** : 
When you start a user-mode application, Windows creates a process for the application. The process provides the application with a private virtual address space and a private handle table. Because an application's virtual address space is private, one application cannot alter data that belongs to another application. Each application runs in isolation, and if an application crashes, the crash is limited to that one application. Other applications and the operating system are not affected by the crash.

*Properties for `system` in Process Explorer*

![img](https://assets.tryhackme.com/additional/windows-processes/system.png)

```
Image Path:  N/A
Parent Process:  None
Number of Instances:  One
User Account:  Local System
Start Time:  At boot time

```

*Properties for `system` in Process Hacker*

![img](https://assets.tryhackme.com/additional/windows-processes/system2.png)

```
Image Path: C:\Windows\system32\ntoskrnl.exe (NT OS Kernel)
Parent Process: System Idle Process (0)

```

**What is unusual behavior for this process?**

- A parent process (aside from System Idle Process (0))
- Multiple instances of System. (Should only be 1 instance) 
- A different PID. (Remember that the PID will always be PID 4)
- Not running in Session 0

***

## System > smss.exe 

smss.exe : Session Manager Subsystem

- This process, also known as the Windows Session Manager
- It is responsible for creating new sessions.
- This is the first user-mode process started by the kernel.
- This process starts the kernel mode and user mode of the Windows subsystem.This subsystem includes win32k.sys (kernel mode), winsrv.dll (user mode), and csrss.exe (user mode). 


**session 0**

smss.exe start `csrss.exe` (Windows subsystem) and `wininit.exe` in Session 0, an isolated Windows session for the operating system.

![img](https://assets.tryhackme.com/additional/windows-processes/smss-session0-tree.png)

![img](https://assets.tryhackme.com/additional/windows-processes/smss-session0b.png)


**session 1**

smss.exe start `csrss.exe` and `winlogon.exe` for Session 1, which is the user session.

![img](https://assets.tryhackme.com/additional/windows-processes/smss-session1-tree.png)

![img](https://assets.tryhackme.com/additional/windows-processes/smss-session1b.png)

*SMSS is also responsible for creating environment variables, virtual memory paging files and starts winlogon.exe (the Windows Logon Manager).*

**What is Normal**

![img](https://assets.tryhackme.com/additional/windows-processes/smss.png)

```
Image Path:  %SystemRoot%\System32\smss.exe
Parent Process:  System
Number of Instances:  One master instance and child instance per session. The child instance exits after creating the session.
User Account:  Local System
Start Time:  Within seconds of boot time for the master instance

```

**What is unusual?**

```
A different parent process other than System(4)
Image path is different from C:\Windows\System32
More than 1 running process. (children self-terminate and exit after each new session)
User is not SYSTEM
Unexpected registry entries for Subsystem

```


## csrss.exe

csrss.exe : Client Server Runtime Process

- user-mode side of the Windows subsystem
- This process is responsible for the Win32 console window and process thread creation and deletion. 
- This process is also responsible for making the Windows API available to other processes, mapping drive letters, and handling the Windows shutdown process.

**What is normal?**

*Session 0 (PID 392)*

![img](https://assets.tryhackme.com/additional/windows-processes/csrss-session0.png)

*Session 1 (PID 512)*

![img](https://assets.tryhackme.com/additional/windows-processes/csrss-session1.png)

*note: Notice what is shown for the parent process for these 2 processes. Remember these processes are spawned by smss.exe which self-terminates itself.*


```
Image Path:  %SystemRoot%\System32\csrss.exe
Parent Process:  Created by an instance of smss.exe
Number of Instances:  Two or more
User Account:  Local System
Start Time:  Within seconds of boot time for the first 2 instances (for Session 0 and 1).  Start times for additional instances occur as new sessions are created, although often only Sessions 0 and 1 are created.

```

**What is unusual?**

```
An actual parent process. (smss.exe calls this process and self-terminates)
Image file path other than C:\Windows\System32
Subtle misspellings to hide rogue process masquerading as csrss.exe in plain sight
User is not SYSTEM

```

## Wininit.exe

winint.exe :  Windows Initialization Process

responsible for launching services.exe (Service Control Manager), lsass.exe (Local Security Authority), and lsaiso.exe within Session 0.

![img](https://assets.tryhackme.com/additional/windows-processes/wininit-tree.png)

*Note: lsaiso.exe is a process associated with Credential Guard and Key Guard. You will only see this process if Credential Guard is enabled.*

**What is normal?**

![img](https://assets.tryhackme.com/additional/windows-processes/wininit.png)

```
Image Path:  %SystemRoot%\System32\wininit.exe
Parent Process:  Created by an instance of smss.exe
Number of Instances:  One
User Account:  Local System
Start Time:  Within seconds of boot time

```

**what is unusual?**

```
An actual parent process. (smss.exe calls this process and self-terminates)
Image file path other than C:\Windows\System32
Subtle misspellings to hide rogue process in plain sight
Multiple running instances
Not running as SYSTEM

```

##  wininit.exe > services.exe 

Service Control Manager.

- responsibility is to handle system services: loading services, interacting with services, starting/ending services, etc.

- It maintains a database that can be queried using a Windows built-in utility, `sc.exe.`

- This process also loads device drivers marked as auto-start into memory. 

- This process is the parent to several other key processes: svchost.exe, spoolsv.exe, msmpeng.exe, dllhost.exe, to name a few. 

![img](https://assets.tryhackme.com/additional/windows-processes/services-tree.png)

**What is normal?**

![img](https://assets.tryhackme.com/additional/windows-processes/services.png)

![img](https://assets.tryhackme.com/additional/windows-processes/services2.png)

```
Image Path:  %SystemRoot%\System32\services.exe
Parent Process:  wininit.exe
Number of Instances:  One
User Account:  Local System
Start Time:  Within seconds of boot time

```

**What is unusual?**

```
A parent process other than wininit.exe
Image file path other than C:\Windows\System32
Subtle misspellings to hide rogue process in plain sight
Multiple running instances
Not running as SYSTEM

```

## wininit.exe > services.exe > svchost.exe 

- Host Process for Windows Services(is responsible for hosting and managing Windows services. )

## lsass.exe

Local Security Authority Subsystem Service (LSASS) is a process in Microsoft Windows operating systems that is responsible for enforcing the security policy on the system. It verifies users logging on to a Windows computer or server, handles password changes, and creates access tokens. It also writes to the Windows Security Log.

It creates security tokens for SAM (Security Account Manager), AD (Active Directory), and NETLOGON. It uses authentication packages specified in `HKLM\System\CurrentControlSet\Control\Lsa.`


**What is normal?**

![img](https://assets.tryhackme.com/additional/windows-processes/lsass.png)

```language
Image Path:  %SystemRoot%\System32\lsass.exe
Parent Process:  wininit.exe
Number of Instances:  One
User Account:  Local System
Start Time:  Within seconds of boot time
```
What is unusual?

```language

A parent process other than wininit.exe
Image file path other than C:\Windows\System32
Subtle misspellings to hide rogue process in plain sight
Multiple running instances
Not running as SYSTEM
```

## winlogon.exe

The Windows Logon, winlogon.exe, is responsible for handling the Secure Attention Sequence (SAS). This is the ALT+CTRL+DELETE key combination users press to enter their username & password. 

This process is also responsible for loading the user profile. 
This is done by loading the user's NTUSER.DAT into HKCU and via userinit.exe loads the user's shell. 

It is also responsible for locking the screen and running the user's screensaver, among other functions.

**What is normal?**

![img](https://assets.tryhackme.com/additional/windows-processes/winlogon1.png)

![img](https://assets.tryhackme.com/additional/windows-processes/winlogon2.png)

```
Image Path:  %SystemRoot%\System32\winlogon.exe
Parent Process:  Created by an instance of smss.exe that exits, so analysis tools usually do not provide the parent process name.
Number of Instances:  One or more
User Account:  Local System
Start Time:  Within seconds of boot time for the first instance (for Session 1).  Additional instances occur as new sessions are created, typically through Remote Desktop or Fast User Switching logons.

```

**What is unusual?**

```language
An actual parent process. (smss.exe calls this process and self-terminates)
Image file path other than C:\Windows\System32
Subtle misspellings to hide rogue process in plain sight
Not running as SYSTEM
Shell value in the registry other than explorer.exe
```

## explorer.exe

This is the process that gives the user access to their folders and files. It also provides functionality to other features such as the Start Menu, Taskbar, etc. 

There will be many child processes for explorer.exe.

![img](https://assets.tryhackme.com/additional/windows-processes/explorer-tree.png)

**What is normal?**

![img](https://assets.tryhackme.com/additional/windows-processes/explorer.png)

```
Image Path:  %SystemRoot%\explorer.exe
Parent Process:  Created by userinit.exe and exits
Number of Instances:  One or more per interactively logged-in user
User Account:  Logged-in user(s)
Start Time:  First instance when the first interactive user logon session begins

```

**What is unusual?**

```
An actual parent process. (userinit.exe calls this process and exits)
Image file path other than C:\Windows
Running as an unknown user
Subtle misspellings to hide rogue process in plain sight
Outbound TCP/IP connections

```
***

## resource :

![img](https://miro.medium.com/max/1400/1*GxlluIvsQLAOaizWk8i1Ew.png)