+++
title = "别TM去炒币了，手把手教你发行自己的虚拟币"
date = "2021-10-17"
tags = [
    "工具应用","比特币",
]
+++

* 本教程基于以太坊生态**ERC-20协议**，不需要任何编程技术
* 本教程仅适用于计算机基础较**薄弱**的朋友，熟手请绕道
* 文中所有的链接处，请右键单击，选择在”**新的窗口打开**”

---

**本文所述的，发行自己的虚拟币/虚拟资产/私人货币/ERC-20代币（以下统称为“代币”），需要以下几个步骤：**

1. 准备一台可上网的电脑；
2. 准备好自己所要发行代币的**属性信息**；
3. 安装并打开谷歌浏览器；
4. 在谷歌浏览器中，安装并配置**MetaMask钱包（以下简称”小狐狸钱包“）**；
5. 获取以太坊**Ropsten测试网络**ETH代币；
6. 使用[**一键发币工具**](https://vittominacori.github.io/erc20-generator/create-token/)，发行自己的代币；
7. 将发行好的代币**添加**到自己的钱包；
8. **完成**；

**以下为详细步骤：**

---

## 1.准备一台可上网的电脑

首先准备一台可上网的电脑，发币的过程在电脑上完成，**Windows电脑和苹果电脑均可**。

---

## 2.准备好自己所要发行代币的属性信息

请先想好自己所要发行的代币的属性信息，然后写在**纸上**，方便后续直接填写；

**属性信息包括：**
* **代币名称**：如Bitcoin, Citcoin, Ditcoin, renminbi.（请使用**英文字符**）
* **代币符号**：如BTC, CTC, DTC, RMB.（通常为**3-5个字符**）
* **代币初始供应量**（单位/个）：如21000000, 100000.

---

## 3.安装并打开谷歌浏览器

使用火狐Firefox浏览器操作也可以，但这里推荐使用谷歌浏览。较为**稳定**。请先安装好，后面的**所有操作**都在谷歌浏览器上进行.

安装地址：[点击进行安装](https://www.google.com/chrome/)

**注：如果你在中国大陆境内，未科学上网的情况下，请下载、安装蓝灯 Lantern, 实现科学上网（可免费使用），必须实现科学上网，后面的步骤需要通过谷歌应用商店下载小狐狸钱包：[链接地址](https://github.com/getlantern/lantern/)**

---

## 4.在谷歌浏览器中，安装并配置小狐狸钱包

**注：如果阅读英文较为吃力，可在浏览器中点击右键，选择“翻译成中文”**

**注：如果已经安装并配置好小狐狸钱包，请直接进入下一步**

在谷歌浏览器中，打开[链接地址](https://chrome.google.com/webstore/category/extensions)

在左侧搜索栏，搜索 **metamask** ，可看到下图所示的应用，点击进行安装，然后按照应用的引导进行配置。

**注：请严格按照页面指引，配置小狐狸钱包，即便现在是使用测试网，也请仅在纸上记下助记词，不要在任何网盘存储助记词，也不要将助记词通过通讯工具发送给任何人，养成良好的私钥管理习惯**

![metamask](/images/create-your-own-token/metamask.png)

配置好后，点击小狐狸图标，切换到**Ropsten测试网络**，

---

## 5.获取以太坊Ropsten测试网络ETH代币

**注：本教程以在以太坊Ropsten测试网络为例，发行代币，若在主网发行代币，需全程切换到“以太坊Ethereum主网络（以下简称主网）”。现在请按下图所示，选择以太坊Ropsten测试网络（以下简称测试网）**

![select-ropsten](/images/create-your-own-token/select-ropsten.jpeg)

选择好后，如下图所示，在页面上红框所示处，复制你的**Ropsten测试网络**钱包地址，形如：

`0x271eDbE0Fb2809de96C05207E4bbc3A73aD5edac`

![copy-address](/images/create-your-own-token/copy-address.png)

然后打开以下[链接地址](https://faucet.ropsten.be/)，将上面所复制的钱包地址粘贴到地址填写栏，获取免费的测试网ETH，如下图所示，然后再点击**Send me test Ether**，等待几秒后，再次打开小狐狸，就可以看到测试网的钱包中，已经有了测试网ETH。

![faucet](/images/create-your-own-token/faucet.png)

**注：这里的ETH仅供测试使用，无法提取到交易所进行交易**

---

## 6. 使用[**一键发币工具**](https://vittominacori.github.io/erc20-generator/create-token/)，发行自己的虚拟币

完成以上的所有步骤之后，就可以正式开始发行代币了。

打开**一键发币工具**：[链接地址](https://vittominacori.github.io/erc20-generator/create-token/)

在下图所示**左侧**界面中，依次填写：

* **代币名称**(Token Name)：如Bitcoin, Citcoin, renminbi.（使用英文字符）
* **代币符号**(Token Symbol)：如BTC, CTC, RMB.（通常为3-5个字符）
* **代币初始供应量**(Initial Supply)：如21000000, 100000

![create-token](/images/create-your-own-token/create-token.png)

**中间的一列不用修改**，然后在页面**最右侧**，按以下内容进行选择：

* Token Type项，下拉选择：**SimpleERC20**
* Network项，下拉选择：**Ropsten**
* Agreement勾选上
* 点击最**右下角**：**CONFIRM**

点击**CONFIRM**后，会自动弹出小狐狸钱包，然后在弹出的小狐狸钱包上点击**确认**。

---

## 7. 将发行好的代币添加到自己的钱包

看到以下信息后，即表示代币已经**创建成功**！

![create-done](/images/create-your-own-token/create-done.png)

接下来需要将创建好的代币添加到自己的小狐狸钱包。

复制下面图片红框所示处的地址。

![create-done](/images/create-your-own-token/create-done-mark.png)

点击打开小狐狸钱包，按下图红框所示，点击**Import Tokens**.

![add-token](/images/create-your-own-token/add-token.png)

出现以下界面，然后将上一步所复制的地址，粘贴到下图所示红框处**代币合约地址**栏

![add-done](/images/create-your-own-token/add-done.png)

然后再点击以上第二个红框处**Add Custome Token**.然后会出现以下界面，再点击**Import Tokens**

![import-token](/images/create-your-own-token/import-token.png)


**出现**以下界面，即代表**添加成功！**

![import-done](/images/create-your-own-token/import-done.png)

此时，你所创建的代币就添加到了你的小狐狸钱包啦！

---

---

## 8.完成

**以上就是在以太坊Ropsten测试网，发行个人代币的完整步骤。**

---

**注意事项：**

* 以上发行所用的是**以太坊Ropsten测试网络**；
* 如果要通过以上[**一键发币工具**](https://vittominacori.github.io/erc20-generator/create-token/)，在**主网**发行代币，步骤也与上面类似，但是会消耗真实的ETH，消耗的ETH包含**发币佣金**（目前[**一键发币工具**](https://vittominacori.github.io/erc20-generator/create-token/)所收的佣金为0.035ETH）和支撑合约运行所需的**Gas费**（按照撰写此文时的费用，Gas费为0.04ETH，两者合计**0.075ETH**）；
* 消耗的ETH即为**参照本文方法**，发行主网代币的**实际成本**，需要事先从个人钱包，或者交易所，向小狐狸钱包存入**足够数额**的ETH；
* 发币有一定成本，建议在**正式**发行前，**考虑清楚**；

---

**免责声明：**

* 本文**仅作为技术交流**，帮助**一般用户**了解发币**流程**以及发币**成本**，**不作为**正式发行代币的**专家建议**。任何组织或个人，受本文启发，在发行代币过程中，**因任何原因，出现任何丢币事件，本人均不承担任何连带责任**！
* 虚拟货币投资属于**高风险行为**，入市需**谨慎**！

---