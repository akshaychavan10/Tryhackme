https://assets.tryhackme.com/additional/win-fun1/win-desktop2.png

1. The Desktop
2. Start Menu
3. Search Box (Cortana)
4. Task View
5. Taskbar
6. Toolbars
7. Notification Area

1. The Desktop :

The desktop is where you will have shortcuts to programs, folders, files, etc.

2. start menu : 

The Start Menu provides access to all the apps/programs, files, utility tools, etc., that are most useful. 

3. taskbar :

Any apps/programs, folders, files, etc., that you open/start will appear in the taskbar. 

***
## file system 


The file system used in modern versions of Windows is the New Technology File System or simply NTFS. 

NTFS is known as a journaling file system. In case of a failure, the file system can automatically repair the folders/files on disk using information stored in a log file. This function is not possible with FAT.   

NTFS addresses many of the limitations of the previous file systems; such as: 

    Supports files larger than 4GB
    Set specific permissions on folders and files
    Folder and file compression
    Encryption


- On NTFS volumes, you can set permissions that grant or deny access to files and folders.

*the permission are*

1. Full control
2. Modify
3. Read & Execute
4. List folder contents
5. Read
6. Write

https://assets.tryhackme.com/additional/win-fun1/ntfs-permissions1.png


**ADS**

ADS is feature of ntfs. 
it stand for `alternate data stream` 
it is a file attribute specific to Windows NTFS 

Every file has at least one data stream ($DATA), and ADS allows files to contain more than one stream of data.

***

## system32 folder

- The Windows folder (C:\Windows) is traditionally known as the folder which contains the Windows operating system. 

This is where environment variables, more specifically system environment variables, come into play. the system  environment variable for the Windows directory is `%windir%`.

`Environment variables store information about the operating system environment. This information includes details such as the operating system path, the number of processors used by the operating system, and the location of temporary folders`

The System32 folder holds the important files that are critical for the operating system. 

***

## User Accounts, Profiles, and Permissions 


typically two type of user is present on windows.

1. administrator
2. standard user

find out info about users and groups using `lusrmgr.msc` .

run it in `run dialog box`

you can see two option : User and Groups

***

## UAC

User did not required to run as high privileged user each time . like when they surfing internet or working in word document.

To protect the local user with such privileges, Microsoft introduced User Account Control (UAC). 

When a user with an account type of administrator logs into a system, the current session doesn't run with elevated permissions. When an operation requiring higher-level privileges needs to execute, the user will be prompted to confirm if they permit the operation to run. 

***

## task manager 

The Task Manager provides information about the applications and processes currently running on the system. Other information is also available, such as how much CPU and RAM are being utilized, which falls under Performance. 


You can access the Task Manager by right-clicking the taskbar. 

comprehensive guide on task manager :

https://www.howtogeek.com/405806/windows-task-manager-the-complete-guide/