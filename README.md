# Reardon's Blog

Reardon Yang 的个人博客，线上地址：**https://reardon.torrdex.com**

记录日常琐碎、经验心得与有趣的事情，借写作做更细致、深入的思考。代表系列：

- **闲话比特币**（Bitcoin Talk）——围绕比特币的长文系列
- **比特币微科幻**（Bitcoin Micro-Fiction）
- **原点**（Origin）系列
- 生活点滴 / 工具应用 / 世界旅行 / 精华转载等栏目

全站共 72 篇文章，中英双语（中文为原文，英文为完整译稿）。

> 本站前身为 reardonyang.com，2026 年恢复并迁移至现域名，文章与原站一一对应。

## 技术栈

| 层 | 选型 |
|---|---|
| 静态站点生成 | **Hugo 0.110.0**（版本锁定，见 `build.sh`；原站即以此版本构建，换版本会产生排版漂移，不要随意升级） |
| 主题 | hugo-bearblog（已 vendored 进 `themes/`，含少量本地定制） |
| 托管 | **Cloudflare Pages**（连接本仓库，push 到 `main` 即自动构建部署） |
| 内容底稿 | Notion（双向同步，见下文「内容管理」） |

## 目录结构

```
.
├── config.toml          # 站点配置：站名、双语、菜单、OG/Twitter 元数据、搜索输出
├── build.sh             # Cloudflare Pages 构建脚本（校验/拉取 Hugo 0.110.0 后执行 hugo）
├── content/
│   ├── _index.md        # 首页（自我介绍与链接）
│   ├── blog/            # 全部文章（每篇一个 .md，英文版为同名 .en.md）
│   ├── category.md      # 分类页
│   ├── plan.md          # 计划页
│   ├── tool.md          # 工具页
│   └── copyright.md     # 版权页
├── i18n/                # 界面文案词条（zh / en）
├── layouts/             # 本地模板覆盖（partials/custom_head.html 等：主题切换、搜索浮窗、注入脚本）
├── static/              # 静态资源（images/ 图片、favicon、分享图）
├── themes/hugo-bearblog/# 主题本体（vendored，非必要不动）
├── archetypes/          # 新文章骨架
└── resources/           # Hugo 构建缓存（生成物，可删，会自动重建）
```

## 双语机制

- 中文为默认语言，位于根目录；英文版位于 `/en/` 子目录。
- 文章英文版与中文版同名同目录，后缀 `.en.md`（如 `bitcoin-is-time.en.md`），front matter 结构一致。
- 界面文案走 `i18n/` 词条；页眉有 EN / 中文一键切换，跳转到当前页的对应语言版本；已配 `hreflang`，双语 sitemap 与 RSS 由 Hugo 自动生成。
- 标签对照：生活点滴 = Life Notes、比特币 = Bitcoin、工具应用 = Tools & Apps、精华转载 = Featured Reprints、世界旅行 = World Travel；系列名：闲话比特币 = Bitcoin Talk、比特币微科幻 = Bitcoin Micro-Fiction、原点 = Origin。
- 英文版是站点侧文件，**不参与 Notion 往返**（Notion 只管中文版）。

## 内容管理（Notion 同步）

文章不在 Git 里直接编辑维护，而是以 Notion 为编辑端、仓库为发布端：

1. 作者在 Notion 的「Reardon 博客」根页面下修改文章，或在「全部文章」下新建子页面（页面标题即文章标题）。
2. 同步时按对照表（manifest：源文件路径 ↔ Notion 页面 ID、原始 front matter、正文 SHA-256）拉取变更页，转换回 Hugo 源码：套回原 front matter、新页面生成新 `.md` 并登记 manifest。
3. 本地以 Hugo 0.110.0 构建校验（与线上逐页比对）后，推送本仓库，由 Cloudflare Pages 自动部署。
4. 全站已完整存档进 Notion（根页面 + 全部文章页），仓库与 Notion 互为备份。

转换约定（同步时自动处理）：

- front matter 不进 Notion 正文，保存在 manifest 中，页面标题 = 文章标题。
- 站内相对链接/图片在存档时补全为 `https://reardon.torrdex.com/...` 绝对地址，同步回网站时再去掉域名前缀。
- 内联图片在 Notion 侧一律拆为独立图片块。
- 文末单独一行的 U+2002 空格段（原站排版惯例）存档时去掉，回到网站时自动补回。

⚠️ **改页面标题 = 改文章标题**：文章 URL slug 随标题生成，改名会连带改 URL；不要把 Notion 页面移出「Reardon 博客」层级或跨栏目移动，确需移动先沟通。

## 本地构建

```sh
# 构建（脚本会确保使用 Hugo 0.110.0，产物在 public/）
./build.sh

# 本地预览（需本机 Hugo 为 0.110.0，或用脚本下载的 /tmp/hugo）
hugo server -D
```

## 搜索

- 全文检索（非仅标题）：构建时按语言生成全文索引（标题 + 正文，约 240 KB，打开搜索时才加载）。
- 入口为页眉放大镜图标，弹出浮窗：标题命中在前、正文命中在后，带日期与高亮摘要，直达文章；文章列表页则即时过滤。
- 深色/浅色主题：页眉 ☾/☀ 切换，`localStorage` 记忆，默认跟随系统。

## 部署

- 本仓库 `main` 分支连接 Cloudflare Pages：**push 即部署**，构建命令执行 `build.sh`（内部锁定 Hugo 0.110.0），产物目录为 `public/`。
- 自定义域名 `reardon.torrdex.com` 绑定在该 Pages 项目上。
- 部署后务必实测线上首页与任一篇文章页（标题、样式、图片），不要只看构建状态。

## 维护注意事项

- **站名**在 `config.toml` 两处：顶层 `title` 与 `[params] title`（OG `site_name`），改名时两处一起改。
- **Hugo 版本锁定 0.110.0**：主题与模板按此版本验证过，升级前先全站构建比对。
- `themes/hugo-bearblog` 为 vendored 主题，页脚 “Powered By 💖Reardon” 是主题的作者署名行，非站名，不要误改。
- 文章图片以站点部署版为准（已压缩/转码 + 懒加载）；原图另行存档，不在仓库内。
- 白皮书、减半时间表等少数页面在 manifest 中标记为 `site_managed`：Notion 只留文字底稿，同步回写时跳过，页面以站点侧文件为准。
- 历史死链（指向旧域名 reardonyang.com）已清理；新增外链时优先用现域名或相对路径。
