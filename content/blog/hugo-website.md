+++
title = "基于Hugo和Github搭建个人网站"
date = "2023-02-12"
tags = [
    "工具应用",
]
+++

**注意：以下教程仅适用于在Windows系统下，基于Hugo及Github，搭建个人网站。**

--

### 第一步，安装并配置Hugo

#### 1.下载Hugo

下载最新版Hugo：[点击下载](https://github.com/gohugoio/hugo/releases)

#### 2.建立目录

下载好后，解压。在D盘建立Hugo文件夹，并把解压后出现的hugo.exe文件放在bin目录下。

#### 3.配置环境变量-->系统变量

下载完成后，需要配置path，按下键盘组合键Win+S键，输入path，点击“编辑系统环境变量”，此时弹出“系统属性弹窗”，点击弹窗右下角“环境变量”，出现“环境变量弹窗”，在下方“系统变量（S）”弹窗，双击“Path”这一行，此时出现“编辑环境变量”弹窗，点击“新建”按钮，将前面hugo.exe的路径（形如：D:\Hugo\bin）粘贴进去。然后依次点击“确认”按钮，共点击三次。

#### 4.验证

验证是否安装并配置成功，按下键盘组合键Win+R键，出现“运行”弹窗，在弹窗中输入“CMD”，点击确认，出现“命令提示符”窗口，输入`D：`，按下回车键，然后输入`cd hugo/bin`,然后输入`hugo version`,出现类似：`hugo v0.110.0-e32a493b7000000763c3b79623952e6254000000+extended windows/amd64 BuildDate=2023-01-17T12:16:09Z VendorInfo=gohugoio`的信息，即代表安装成功。

#### 至此，完成安装并配置Hugo。

--

### 第二步，安装Visual Studio Code

下载最新版Visual Studio Code：[点击下载](https://code.visualstudio.com/)

下载完成后，直接双击安装。建议安装在`D盘`，一路点击确认和下一步，选择默认配置即可。

#### 至此，完成安装并配置Visual Studio Code.

--

### 第三步，安装并配置Git

#### 1.下载Git

下载最新版Git：[点击下载](https://git-scm.com/download/win)

下载完成后，直接双击安装。建议安装在`D盘`，一路点击确认和下一步，选择默认配置即可。

#### 2.配置Git

在以上步骤出现的“命令提示符”窗口，输入`git config --global user.name "Jack"`，（请将`“Jack”`替换为自己的用户名）然后按下回车键。

再输入`git config --global user.email "Jack@gmail.com"`，（请将`“Jack@gmail.com”`替换为自己的邮箱地址）然后按下回车键。

#### 至此，完成安装并配置Git.

--

### 第四步，网站初始化及配置模板

#### 1.网站初始化

这里我们以在D盘创建个人网站仓库文件夹为例，在“命令提示符”窗口，输入`D：`，按下回车键，然后输入`hugo new site jack.com`，（请将`“jack.com”`替换为自己想要命名的仓库名称，建议使用英文），然后按下回车键。

出现类似以下文字，即代表网站初始化成功。

`Congratulations! Your new Hugo site is created in D:\jack.com.`

`Just a few more steps and you're ready to go:`

`1. Download a theme into the same-named folder.`
   `Choose a theme from https://themes.gohugo.io/ or`
   `create your own with the "hugo new theme <THEMENAME>" command.`

`2. Perhaps you want to add some content. You can add single files`
   `with "hugo new <SECTIONNAME>\<FILENAME>.<FORMAT>".`

`3. Start the built-in live server via "hugo server".`

`Visit https://gohugo.io/ for quickstart guide and full documentation.`

进入D盘，打开`jack.com.`文件夹，共可看到7个文件夹和一个文件，这些文件分别代表：

* archetypes：存放用hugo命令新建的md文件应用的front matter模版
* content：存放内容页面，如Blog
* layouts：存放定义网站的样式，写在layouts文件下的样式会覆盖安装的主题中的layouts文件同名的样式
* static：存放所有静态文件，如图片
* data：存放创建站点时Hugo使用的其他数据
* public：存放Hugo生成的静态网页
* themes：存放主题文件
* config.toml：网站配置文件

#### 2.配置模板

### 这里以本站使用的hugo-bearblog模板为例，其他更多Hugo模板可[点击这里下载](https://themes.gohugo.io/)。

[点击预览本站模板](https://themes.gohugo.io/themes/hugo-bearblog/)

[点击下载本站模板](https://codeload.github.com/janraasch/hugo-bearblog/zip/refs/heads/master)，如果下载链接失效，请[点击这里](https://github.com/janraasch/hugo-bearblog/)进行下载。

下载完成后，解压，获取`hugo-bearblog-master`文件夹。将`hugo-bearblog-master`文件夹直接拷贝到上一步D盘中生成的`jack.com/themes`目录下，将拷贝过来的`hugo-bearblog-master`文件夹重新命名为`hugo-bearblog`（即去掉master，这一步一定要做，不然后续可能无法识别到对应模板）

然后进入`hugo-bearblog`目录下`exampleSite`文件夹，直接将`exampleSite`文件夹下面的`content`、`static`、`config.toml`的三个文件直接复制到D盘`jack.com`目录下，注意，此时会提示“替换或跳过文件”弹窗，选择“替换目标中的文件”，**非常推荐这么做，这样做能解决很多问题。**

#### 3.验证是否成功安装模板

在“命令提示符”窗口，输入`D：`，按下回车键，然后输入`cd jack.com`

然后输入`hugo server`，会出现类似以下的文字。

`Start building sites …`

`hugo v0.110.0-e32a493b7826d02763c3b79623952e625402b168+extended windows/amd64` 
`BuildDate=2023-01-17T12:16:09Z VendorInfo=gohugoio`

`…………………………………………`

`Built in 38 ms`

`Watching for changes in D:\reardon.com\{archetypes,assets,content,data,layouts,static,themes}`

`Watching for config changes in D:\reardon.com\config.toml`

`Environment: "development"`

`Serving pages from memory`

`Running in Fast Render Mode. For full rebuilds on change: hugo server --disableFastRender`

`Web Server is available at http://localhost:1313/ (bind address 127.0.0.1)`

--

成功出现以上文字后，在浏览器输入`http://localhost:1313/`，即可打开模板网站实例页面。

#### 至此，完成网站初始化及配置模板。

--

### 第五步，使用Visual Studio Code定制网站信息，书写网站内容

现在我们要用到前面安装的**Visual Studio Code**，非常推荐直接用**Visual Studio Code**来书写内容及调整模板参数。

双击打开**Visual Studio Code**，会出现配置界面，选择默认即可。

点击右上角文件按钮，点击“打开文件夹”，然后选择D盘中的`jack.com`文件夹，然后点击“选择文件夹”，即可对实例页面进行修改，以及新增页面了。

接下来，即可根据自己的需求，定制网站信息，并且书写自己的网站内容啦。

[点击这里](https://github.com/janraasch/hugo-bearblog/)，参考模板说明信息。

[点击这里](https://gohugo.io/documentation/)，参考Hugo官方帮助手册。

--

### 第六步，将建设完成的站点部署至Github

**1.创建Github仓库**

注册Github账户，注册完成后。点击右上角个人头像旁边的“+”号，点击`New repository`.

在打开的页面中，填写仓库名称。

`Description`这一栏可填写相关描述。

勾选`Public`，设置为公开仓库。（系统默认已经勾选，不用更改）

勾选`Add a README file`。这会设置`main`分支为仓库的默认主分支，这在后面提交推送网站内容时很重要。

**3.在本地完成git初始化，并与Github仓库完成连接**

完成以上步骤后，现在我们在在“命令提示符”窗口，输入`D：`，按下回车键，然后输入`cd jack.com`，按下回车键，再输入`cd public`，进入`public`文件夹。

然后再输入`git init`，完成本地仓库初始化。

然后再输入`git remote add origin https://github.com/ReardonYang/ReardonYang.github.io.git`，这一步后，我提示我们输入Github账号和密码。

完成以上步骤后，建议从Github仓库同步一次数据。输入`git pull origin master`.

**4.在本地生成网站页面文件并同步至Github仓库**

在“命令提示符”窗口，输入`D：`，按下回车键，然后输入`cd jack.com`，按下回车键。再输入`hugo`，按下回车键。此时，在`public`文件夹下会生成页面文件，这些生成的文件，就是我们要上传到Github仓库的文件。（以后每次更新完网站，都建议删除这些`public`目录下生成的页面，然后按此步骤重新生成页面后上传）

以上完成后，在“命令提示符”窗口，输入`git add .`，然后输入`git commit -m "在此处添加文件上传备注信息"`。

最后，输入`git push -u origin master`，将文件同步至Github仓库。

### 第七步，完成

至此，完成所有操作。

在Github上打开你所创建的仓库，进入`Setting`界面，然后在页面左侧点击`Pages`，即可找到所搭建网站的地址链接信息。点击该地址链接，即可进行访问。

### 常用命令：

**初始化**：`git init`

**链接本地仓库与Github**：`git remote add origin https://github.com/ReardonYang/ReardonYang.github.io.git`

**获取Github仓库文件**：`git pull origin master`

**将更新信息进行确认**：`git add .`

**添加备注信息**：`git commit -m "在此处添加文件上传备注信息"`

**将文件同步至Github仓库**：`git push -u origin master`

---