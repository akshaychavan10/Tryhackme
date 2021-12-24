## file system

**file system structure**

- Logical drives (Ex: Local Disk C)
- Folders (these are the folders that come by default. Ex: Documents, Downloads, Music)
- Files

**some folders located on the C drive and their role**

1. PerfLogs - Stores the system issues and other reports regarding performance
2. Program Files and Program Files (x86) - Is the location where programs install unless you change their path (Ex: Choosing to install software on D drive)
3. Users - In this folder are stored the users created. It also stores users generated data (Ex: Saving a file on your Desktop)
4. Windows - It's the folder which basically contains the code to run the operating system and some utility tools (we'll talk about them later)

**File Permissions**

- Users
- Groups

Permission that can be set :

- Full control : allows the user/users/group/groups to set the ownership of the folder, set permission for others, modify, read, write, and execute files.


- Modify : allows the user/users/group/groups to modify, read, write, and execute files.

- Read & execute : allows the user/users/group/groups to read and execute files.

- List folders content : allows the user/users/group/groups to list the contents (files, subfolders, etc) of a folder.

- Read : only allows the user/users/group/groups to read files.

- Write : allows the user/users/group/groups to write data to the specified folder (automatically set when "Modify" right is checked).

- Special permissions


*A tool you can use to check the files or folder permissions is `icacls`. You can also use `icals` to  set ownership of the folder, set, remove or deny permissions.*

![img](https://i.imgur.com/g0b0Pa8.png)

```
I - permission inherited from the parent container

F - full access (full control)

M - Modify right/access

OI - object inherit

IO - inherit only

CI - container inherit

RX - read and execute

AD - append data (add subdirectories)

WD - write data and add files

```

