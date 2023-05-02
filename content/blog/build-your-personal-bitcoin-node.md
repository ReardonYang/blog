+++
title = "使用Umbrel搭建比特币节点"
date = "2021-10-31"
tags = [
    "工具应用","比特币",
]
+++

## ─=≡Σ( つ₿ ω ₿)つ下图是搭建好之后的样子：

![introduce1](/images/build-your-personal-bitcoin-node/introduce1.png)

注：搭建比特币节点有多种方式，本教程采用**树莓派 + Umbrel**的方式进行搭建，**无任何技术门槛**。这种搭建方式的好处很多，包括**足够独立，节能，稳定，安全，数据完全自我控制，界面美观（可视化界面）**，此外，可玩性极强，Umbrel提供比特币应用商店，提供闪电网络、区块链浏览器等各类应用，**大大降低普通用户进入比特币生态的门槛**，相信大家在探索一番后，也会对Umbrel的**强大**之处深有体会！

**再来**一张图：

![introduce2](/images/build-your-personal-bitcoin-node/introduce2.png)

**搭建好后，支持转账、收款等常规操作，以及查看比特币余额、转账记录、区块高度、当前全网算力值、全节点所占硬盘空间大小等一系列信息，更多功能，请自行探索！**

**好了，下面正式开始教程：**

---

**使用Umbrel搭建比特币全节点，需要以下几个步骤：**

1. 准备/购买所需设备；
2. 等待到货；
3. 准备就绪；
4. 下载**Umbrel和Balena Etcher**；
5. 在microSD存储卡中**安装/写入Umbrel**；
6. 连接设备；
7. 完成；

**以下为详细步骤：**

---

## 1.准备/购买所需设备👀

如果人在中国境内，以下设备均可在淘宝找到，请选择评价较好，交易数量相对较多的店铺，尽量选择天猫店，在国外则选择亚马逊购买即可：

* 树莓派（型号为4B）（附带电源，电源请强烈建议选择**官方版本**），国内上淘宝，国外亚马逊；
* 树莓派外壳，注意要与树莓派型号一致（一般会附带有树莓派散热片）；
* 1TB固态硬盘；
* 固态硬盘盒子；
* 16GB容量以上microSD存储卡；
* microSD存储卡**读卡器**；
* 网线；
* 电脑，**Windows电脑和苹果电脑均可**；

---

## 2.等待到货

下单购买以上设备后，就**耐心等待**吧，等待将它们一件件从快递小哥那领回家。在等待期间，你可以通过以下事情**打发时光**：

* 阅读：[比特币白皮书](https://github.com/ReardonYang/ReardonYang.github.io/blob/master/bitcoin.pdf)
![bitcoin-paper](/images/build-your-personal-bitcoin-node/bitcoin-paper.png) | [下载](https://github.com/ReardonYang/ReardonYang.github.io/raw/master/bitcoin.pdf)
* 关注我：[Twitter](https://twitter.com/ReardonYang) || [豆瓣](https://www.douban.com/people/57644512/) ；
* **阅读**我写的[关于比特币的文章](https://reardonyang.com/blog/)；
* 关注：[Michael Saylor](https://twitter.com/saylor) 和 [Andreas M. Antonopoulos](https://twitter.com/aantonop)；
* **睡觉** 💤

---

## 3.准备就绪

![get-pi](/images/build-your-personal-bitcoin-node/get-pi.png)

拿到买到**所有的所有设备**后，就可以开始搭建全节点了：
* 先给树莓派套上外壳，贴上散热片（此为可选项，**没有散热片也可**），拧上螺丝；
* 将microSD存储卡插入到读卡器中，然后**插到电脑上**；

---

## 4.下载Umbrel和Balena Etcher

分别下载[Umbrel](https://github.com/getumbrel/umbrel-os/releases/)和[Balena Etcher](https://www.balena.io/etcher/)

![down-software](/images/build-your-personal-bitcoin-node/down-software.png)

下载后，安装Balena Etcher。

**注：上图为笔者所使用的版本，点击以上链接后，可直接下载最新版本，使用方法一样。**

---

## 5.在microSD存储卡中安装/写入Umbrel

只要**三步**，即可通过Balena Etcher将Umbrel写入到存储卡中：

* 打开Balena Etcher，按下图所示，选择Flash from file，然后选择已经**下载好的**Umbrel-os-xxx.zip文件；
![balena](/images/build-your-personal-bitcoin-node/balena.png)
* 点击Select target，选择已经插入到电脑上的microSD存储卡设备；
* 点击Flash.（安装/写入过程需消耗数分钟）

安装/写入完成后，即可将microSD存储卡**从读卡器中取出**。

---

## 6.连接设备

好了，接下来，把**所有设备连接**起来吧！

* 将microSD卡正确插入到树莓派microSD**卡槽**；
* 将固态硬盘放入到固态硬盘盒子中，然后通过USB数据线连接到树莓派上；
* 将树莓派**通过网线与路由器**连接起来；
* 将电源线与树莓派连接；
* **通电！** ⚡⚡⚡

---

## 7.完成

接下来，缓一缓，上个洗手间，吃个橘子，5到10分钟后，在电脑或移动设备（**设备需与树莓派在同一个网络**）浏览器中，输入并访问:`http://umbrel.local/`，通往**新世界的大门**在你面前打开😃😃😃

![new-umbrel](/images/build-your-personal-bitcoin-node/new-umbrel.png)

---

注：如果输入`http://umbrel.local/`后，**始终打不开以上界面**，请下载并使用[Angry IP](https://angryip.org/)，找到已经安装好的Umbrel的IP地址，并在浏览器中直接输入该地址（例如 http://192.168.69.420）。

注：按照Umbrel界面的提示信息，完成**密钥备份**后，节点即开始进行同步。如果你需要配置闪电网络，或者Mempool区块链浏览器，需等待节点**同步完成**，大约需要**1个周左右**时间。

注：如果你在**中国大陆境**内，按照以上步骤正确操作后，设备一直无法开始进行节点同步，则可能是网络封锁问题，此时，可能需要将路由器进行**科学上网**。

---

**💖 搭建节点过程中，有任何问题想要寻求帮助，请通过 [Twitter](https://twitter.com/ReardonYang) || [豆瓣](https://www.douban.com/people/57644512/) 联系我 ；**

---