UESTCthesis是电子科技大学毕业论文官方发布的LaTeX模板。同时支持本科、各种硕士、各种博士的学位论文排版。
这个模板可以仅使用一条\documentclass命令，就能帮助排版你的毕业论文。
所有文件都使用 UTF-8 无 BOM 编码格式。

本模板使用LPPL协议发布。

模板包含2个文件（更新模板时只需替换这两个文件）：
uestcthesis.cls 和 uestcthesis.bst。
这两个文件需要放在可以被LaTeX搜索到的位置，以便被所有文档都可以使用。
不同的LaTeX发行套装有不同的位置设置。但都可以放在工作目录中，例如example目录。
这样本模板只能被example目录中的文档所使用。example是一个样例，同时也是说明文档的源文件。

presentation目录中是Beamer幻灯片样例。

更详细的说明和**更新日志**请见“**说明文档.pdf**"。
模板的已知但未能修复的BUG见issue页面。

首次使用本模板，极有可能遇到安装的LaTeX系统所带宏包不全，或者版本过旧的问题。模板已经附加一个packagecheck.tex文件，编译后能够确认是否有过旧的宏包，或者缺失的宏包。详情请阅读说明文档。需要注意的是，如果此文件编译后的结果显示有宏包不全或过旧的情况。请不要认为是模板的bug。如果下载的是CTeX系统，至少需要运行两次更新程序才有可能编译通过。更详细的指导见“说明文档.pdf”。

模板发布至今（2014年2月27日）已经没有明显的BUG了，如果有需要反馈的问题可以开issue在这里反馈，我能及时收到邮件。

本模板已经由研究生院官方发布，通知见：http://gr.uestc.edu.cn/article.shtml?id=7530
同时清水河畔也成立了相关板块：http://bbs.stuhome.net/forum.php?mod=forumdisplay&fid=308
如果希望用QQ即时交流可加QQ群：成电LaTeX技术交流（71480604）
加群连接：http://url.cn/S1QIdM