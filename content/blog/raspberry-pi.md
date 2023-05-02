+++
title = "树莓派基础操作&知识"
date = "2021-12-06"
tags = [
    "工具应用",
]
+++

![bitcoin001](/images/raspberrypi.jpeg)

🍓🍓`树莓派（英语：Raspberry Pi）：是英国树莓派基金会开发的微型单板计算机，目的是以低价硬件及自由软件促进学校的基本计算机科学教育。 树莓派系列计算机每一代均使用博通（Broadcom）出产的ARM架构处理器。Raspberry Pi OS是官方推出的操作系统，适用于所有型号的树莓派，树莓派基金会网站也提供了Ubuntu MATE、Ubuntu Core、Ubuntu Server、OSMC等第三方系统供大众下载。`

---

**1.树莓派默认用户名和默认密码**

--`默认用户名：pi`

--`默认密码：raspberry`

**2.获取/查看树莓派的IP地址**

--`方法一：连接显示器和键盘，打开Terminal终端工具，输入命令：hostname -i`

--`方法二：在路由器管理界面的设备列表查找，列表中路由器的名称一般为raspberry`

**3.开启树莓派SSH用于远程连接**

--`将树莓派系统写入到microSD卡后，在microSD卡的根目录创建SSH文件即可开启SSH；`

**4.树莓派ssh登录**

--`命令：sudo pi@192.168.***.***`

**5.更新树莓派软件列表**

--`命令：sudo apt-get update`

**6.升级树莓派软件包**

--`命令：sudo apt-get upgrade`

**7.查询树莓派的IP地址**

--`命令：ip addr`

**8.打开树莓派设置界面**

--`命令：sudo raspi-config`

`注：在设置界面中，可设置树莓派所属区域，可输入WiFi账户和密码连接WiFi；`

**9.连接树莓派FTP**

--`输入命令：sudo apt-get install vsftpd`

但是这样开启之后，FTP工具是可以连接了，但是只能从树莓派上获取文件，却无法上传文件。
所以还需要修改树莓派的配置。

--`输入指令：sudo vim /etc/vsftpd.conf `

找到以下选项，并按如下进行修改：

`anonymous_enable=NO`

`local_enable=YES`

`write_enable=YES`

`local_umask=022`

然后输入命令：`sudo service vsftpd restart`，重启FTP服务。

完成以上操作后，在本地机器上安装FileZilla软件，输入树莓派IP地址、账户、密码，即可通过FTP连接到树莓派。

**10.立即关闭树莓派**

--`命令：shut halt`

`注：推荐使用这种关闭方式。此命令会在关机前停止所有CPU功能。执行时，会杀死/关闭应用进程、执行sync系统调用、文件系统写操作完成后就会停止内核。`

**11.定时关闭树莓派，在02:15分关闭（时间可自定义）**

--`命令：shut down -h 02:15`

**12.立即重启树莓派**

--`命令：sudo reboot`

**13.树莓派连接SSH时，出现以下提示信息:**

`@@@WARNING: REMOTE HOST IDENTIFICATION HAS CHANGED! @@@`

`IT IS POSSIBLE THAT SOMEONE IS DOING SOMETHING NASTY!
Someone could be eavesdropping on you right now (man-in-the-middle attack)! 
It is also possible that a host key has just been changed. The fingerprint for the RSA key sent by the remote……`

解决的方法是：

--`输入命令：ssh-keygen -R 192.168.***.***`

`注：将以上192.169.***.***替换为树莓派的真实IP地址；`

---