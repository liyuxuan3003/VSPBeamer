# VSPBeamer

VSPBeamer提供了一个适用于教学课件和正式汇报的文档类`vsp-beamer`，以Git子模块方式引入，基于`beamer`和`ctex`。

VSPBeamer的名称沿用原VSP-Beamer项目。

VSPBeamer是LumosLaTeX计划的一部分：https://github.com/liyuxuan3003/LumosLaTeX

若需要完整的模板工程，参见VSPBeamerTemplate：https://github.com/liyuxuan3003/VSPBeamerTemplate

## 主要特点

- 提供红色、紫色、奶龙黄色三套配色。
- 提供tutorial和report两类封面。
- 提供以上海科技大学为背景和品牌的shtu变体。
- 统一的章节过渡页、青绿色分隔线、紧凑页脚、块环境和代码样式。
- 16:9页面布局，字号由1280x720画布换算得到。
- 使用Latin Modern西文字体和系统Noto CJK SC中文字体。

## 文档选项

| 选项 | 默认值 | 说明 |
|------|--------|------|
| `theme=` | `tutorial-red` | 主题，可选`tutorial-red`、`tutorial-red-shtu`、`tutorial-purple`、`tutorial-nailong`、`report-red`、`report-nailong` |

## 引入方式

VSPBeamer以Git子模块的形式引入项目

```bash
git submodule add git@github.com:liyuxuan3003/VSPBeamer.git vsp-beamer
```

在主文件顶层指定输入路径

```latex
\makeatletter\def\input@path{{vsp-beamer}}\makeatother
```

指定素材搜索路径并使用文档类

```latex
\graphicspath{{vsp-beamer/assets/}}

\documentclass[theme=tutorial-red]{vsp-beamer}
```

若不使用`vsp-beamer`文档类，也可以基于标准`beamer`直接使用主题

```latex
\documentclass[aspectratio=169,10pt]{beamer}
\usepackage[UTF8,fontset=none]{ctex}
\usetheme{tutorial-red}
```

## 自定义命令

### `\VSPtitleframe`、`\VSPsectionframe`、`\VSPendframe`

页面框架命令。

| 命令 | 说明 |
|------|------|
| `\VSPtitleframe` | 输出封面页 |
| `\VSPsectionframe{title}{subtitle}` | 输出自定义章节过渡页 |
| `\VSPendframe{text}` | 输出尾页 |

### `\VSPsetspeaker`、`\VSPspeakerblock`

演讲者命令。

| 命令 | 说明 |
|------|------|
| `\VSPsetspeaker[label]{name}{detail}` | 设置封面的标签、姓名和详情，并同步`\author`和`\institute` |
| `\VSPspeakerblock` | 输出封面的演讲者信息块 |

### `\VSPsetupLogo`、`\VSPsetupNameLogo`、`\VSPbrandmark`

品牌标志命令。

| 命令 | 说明 |
|------|------|
| `\VSPsetupLogo{file}` | 设置页眉标志图片 |
| `\VSPsetupNameLogo{file}` | 设置名称标志图片 |
| `\VSPbrandmark` | 输出页眉标志 |

### `\VSPasset`、`\vspaccent`、`\vspmuted`

素材与强调命令。

| 命令 | 说明 |
|------|------|
| `\VSPasset{file}` | 返回素材文件名，配合`\graphicspath`使用 |
| `\vspaccent{text}` | 使用主题强调色加粗输出文本 |
| `\vspmuted{text}` | 使用弱化色输出文本 |

## 自定义环境

### `vspcallout`

可自定义颜色的提示框环境。

```latex
\begin{vspcallout}[color]{title}
    ...
\end{vspcallout}
```

| 序号 | 格式 | 类型 | 说明 |
|------|------|------|------|
| 1 | `[color]` | 可选 | 边框和标题颜色，默认`VSPPrimary` |
| 2 | `{title}` | 必选 | 标题内容 |

### `vspquote`、`vspquoteblue`、`vspquotered`、`vspquotegreen`、`vspquotepurple`、`vspquoteblack`、`vspquoteyellow`

预设颜色的提示框环境。

```latex
\begin{vspquote}{title}
    ...
\end{vspquote}
```

| 序号 | 格式 | 类型 | 说明 |
|------|------|------|------|
| 1 | `{title}` | 必选 | 标题内容 |

## 许可证

项目源代码使用MIT License。ShanghaiTech标识和Nailong图像的授权边界见[THIRD_PARTY_ASSETS.md](THIRD_PARTY_ASSETS.md)。
