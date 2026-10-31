+++
title = "Raspberry Pi: Basics and Know-How"
date = "2021-12-06"
tags = [
    "Tools & Apps",
]
+++

![bitcoin001](/images/raspberrypi.jpeg)

🍓🍓`The Raspberry Pi: a tiny single-board computer developed by the UK's Raspberry Pi Foundation, intended to promote basic computer science education in schools through low-cost hardware and free software. Every generation of the Raspberry Pi series of computers uses an ARM-architecture processor produced by Broadcom. Raspberry Pi OS is the officially released operating system, suitable for all Raspberry Pi models; the Raspberry Pi Foundation's website also provides third-party systems such as Ubuntu MATE, Ubuntu Core, Ubuntu Server, and OSMC for the public to download.`

---

**1. The Raspberry Pi's default username and default password**

--`Default username: pi`

--`Default password: raspberry`

**2. Obtaining/viewing the Raspberry Pi's IP address**

--`Method one: Connect a monitor and keyboard, open the Terminal tool, and enter the command: hostname -i`

--`Method two: Look it up in the device list in your router's management interface; in the list, the router entry is generally named raspberry`

**3. Enabling SSH on the Raspberry Pi for remote connection**

--`After writing the Raspberry Pi system onto the microSD card, create an SSH file in the root directory of the microSD card to enable SSH;`

**4. Logging in to the Raspberry Pi via SSH**

--`Command: sudo pi@192.168.***.***`

**5. Updating the Raspberry Pi's software list**

--`Command: sudo apt-get update`

**6. Upgrading the Raspberry Pi's software packages**

--`Command: sudo apt-get upgrade`

**7. Querying the Raspberry Pi's IP address**

--`Command: ip addr`

**8. Opening the Raspberry Pi's settings interface**

--`Command: sudo raspi-config`

`Note: In the settings interface, you can set the region the Raspberry Pi belongs to, and enter a WiFi account and password to connect to WiFi;`

**9. Connecting to the Raspberry Pi via FTP**

--`Enter the command: sudo apt-get install vsftpd`

But after enabling it this way, FTP tools can connect, yet you can only fetch files from the Raspberry Pi and cannot upload files.
So you also need to modify the Raspberry Pi's configuration.

--`Enter the command: sudo vim /etc/vsftpd.conf `

Find the following options and modify them as shown:

`anonymous_enable=NO`

`local_enable=YES`

`write_enable=YES`

`local_umask=022`

Then enter the command: `sudo service vsftpd restart`, to restart the FTP service.

After completing the above, install the FileZilla software on your local machine, enter the Raspberry Pi's IP address, account, and password, and you can connect to the Raspberry Pi via FTP.

**10. Shutting down the Raspberry Pi immediately**

--`Command: shut halt`

`Note: This shutdown method is recommended. This command stops all CPU functions before powering off. When executed, it kills/closes application processes, performs the sync system call, and stops the kernel once file system writes are complete.`

**11. Shutting down the Raspberry Pi on a schedule, at 02:15 (the time can be customized)**

--`Command: shut down -h 02:15`

**12. Restarting the Raspberry Pi immediately**

--`Command: sudo reboot`

**13. When connecting to the Raspberry Pi via SSH, the following prompt appears:**

`@@@WARNING: REMOTE HOST IDENTIFICATION HAS CHANGED! @@@`

`IT IS POSSIBLE THAT SOMEONE IS DOING SOMETHING NASTY!
Someone could be eavesdropping on you right now (man-in-the-middle attack)! 
It is also possible that a host key has just been changed. The fingerprint for the RSA key sent by the remote……`

The solution is:

--`Enter the command: ssh-keygen -R 192.168.***.***`

`Note: Replace the 192.169.***.*** above with the Raspberry Pi's real IP address;`

 
