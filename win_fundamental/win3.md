## Windows update

service provided by Microsoft to provide security updates, feature enhancements, and patches for the Windows operating system and other Microsoft products, such as Microsoft Defender. 

To access `windows update` open run dialog box or `cmd` interface and type `control /name Microsoft.WindowsUpdat`

## Windows security

Windows Security is your home to manage the tools that protect your device and your data

- Green means your device is sufficiently protected, and there aren't - recommended actions.
- Yellow means there is a safety recommendation for you to review.
- Red is a warning that something needs your immediate attention

https://assets.tryhackme.com/additional/win-fun3/windows-security2.png 


- Virus & threat protection
- Firewall & network protection
- App & browser control
- Device security

### Virus & threat protection

divided into two parts

1. Current threats
2. Virus & threat protection settings

**current threats**

https://assets.tryhackme.com/additional/win-fun3/windows-security3.png

- scan option

*Quick scan* - Checks folders in your system where threats are commonly found.
*Full scan* - Checks all files and running programs on your hard disk. This scan could take longer than one hour.
*Custom scan* - Choose which files and locations you want to check.

- Threat history

*Last scan* - Windows Defender Antivirus automatically scans your device for viruses and other threats to help keep it safe.
*Quarantined threats* - Quarantined threats have been isolated and prevented from running on your device. They will be periodically removed.
*Allowed threats* - Allowed threats are items identified as threats, which you allowed to run on your device.

**Virus & threat protection settings**

- Real-time protection - Locates and stops malware from installing or running on your device.
- Cloud-delivered protection - Provides increased and faster protection with access to the latest protection data in the cloud.
- Automatic sample submission - Send sample files to Microsoft to help protect you and others from potential threats. 
- Controlled folder access - Protect files, folders, and memory areas on your device from unauthorized changes by unfriendly applications.
- Exclusions - Windows Defender Antivirus won't scan items that you've excluded.
- Notifications - Windows Defender Antivirus will send notifications with critical information about the health and security of your device. 

### Firewall & network protection 

A firewall is what controls what is - and more importantly isn't - allowed to pass through those ports.

Windows Firewall offers three firewall profiles: domain, private and public".

- Domain - The domain profile applies to networks where the host system can authenticate to a domain controller. 
- Private - The private profile is a user-assigned profile and is used to designate private or home networks.
- Public - The default profile is the public profile, used to designate public networks such as Wi-Fi hotspots at coffee shops, airports, and other locations

### App & browser control 

Microsoft Defender SmartScreen protects against phishing or malware websites and applications, and the downloading of potentially malicious files

Windows Defender SmartScreen helps protect your device by checking for unrecognized apps and files from the web. 

### Bitlocker

BitLocker Drive Encryption is a data protection feature that integrates with the operating system and addresses the threats of data theft or exposure from lost, stolen, or inappropriately decommissioned computers

On devices with TPM installed, BitLocker offers the best protection

TPM : Trusted Platform Module (TPM) technology is designed to provide hardware-based, security-related functions. A TPM chip is a secure crypto-processor that is designed to carry out cryptographic operations. The chip includes multiple physical security mechanisms to make it tamper-resistant, and malicious software is unable to tamper with the security functions of the TPM

