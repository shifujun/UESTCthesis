# 最新版本：v1.1.0 #
升级请参考Wiki：[如何从v1.0.x升级到v1.1.0](https://github.com/shifujun/UESTCthesis/wiki/%E5%A6%82%E4%BD%95%E4%BB%8Ev1.0.x%E5%8D%87%E7%BA%A7%E5%88%B0v1.1.0)
# 简介 #
UESTCthesis是电子科技大学毕业论文官方发布的LaTeX模板。同时支持本科、各种硕士、各种博士的学位论文排版。
这个模板可以仅使用一条\documentclass命令，就能帮助排版你的毕业论文。
所有文件都使用 UTF-8 无 BOM 编码格式。

本模板使用LPPL协议发布。

模板的**使用说明**请看Wiki页面：  
[https://github.com/shifujun/UESTCthesis/wiki](https://github.com/shifujun/UESTCthesis/wiki)

模板的已知但未能修复的BUG见issue页面：  
[https://github.com/shifujun/UESTCthesis/issues](https://github.com/shifujun/UESTCthesis/issues)

如果有需要反馈的问题可以开issue在这里反馈，我能及时收到邮件。

如果希望用QQ即时交流可加QQ群：   
![成电LaTeX技术交流（71480604）](https://github.com/shifujun/UESTCthesis/wiki/images/QQGroupLogo.jpg) 成电LaTeX技术交流（71480604）验证信息请说明身份，不要空置。  
加群连接：[http://url.cn/S1QIdM](http://url.cn/S1QIdM)

# 更新日志 #

##2015年2月13日： v1.1.0 ##

- 去除封面、中文扉页、英文扉页、版权页等前置页面。新解决方案：[添加封面并准备提交电子档](https://github.com/shifujun/UESTCthesis/wiki/%E6%B7%BB%E5%8A%A0%E5%B0%81%E9%9D%A2%E5%B9%B6%E5%87%86%E5%A4%87%E6%8F%90%E4%BA%A4%E7%94%B5%E5%AD%90%E6%A1%A3 "添加封面并准备提交电子档")；
- 删除withoutforepages选项；
- 在onlychapters选项中去除个人和学校信息；
- 新增子图组跨页命令`\subpicnewpage`，用法见Wiki：[子图组跨页](https://github.com/shifujun/UESTCthesis/wiki/%E6%8F%92%E5%85%A5%E5%9B%BE%E7%89%87#%E5%AD%90%E5%9B%BE%E7%BB%84%E8%B7%A8%E9%A1%B5 "子图组跨页")；
- 新增了5个图表命令，用于插入图表时单独设置它们在图表目录中的标题。用法见Wiki：[令图表目录中的标题和正文中不同](https://github.com/shifujun/UESTCthesis/wiki/%E5%9B%BE%E8%A1%A8%E7%9B%AE%E5%BD%95#%E4%BB%A4%E5%9B%BE%E8%A1%A8%E7%9B%AE%E5%BD%95%E4%B8%AD%E7%9A%84%E6%A0%87%E9%A2%98%E5%92%8C%E6%AD%A3%E6%96%87%E4%B8%AD%E4%B8%8D%E5%90%8C "令图表目录中的标题和正文中不同")；
- 删除了pdf元信息中的版权连接，因该链接已失效；
- 删除图表目录中每章条目之间的空白。恢复方式见Wiki：[按章分组](https://github.com/shifujun/UESTCthesis/wiki/%E5%9B%BE%E8%A1%A8%E7%9B%AE%E5%BD%95#%E6%8C%89%E7%AB%A0%E5%88%86%E7%BB%84 "按章分组")；
- 重构了cls文件中主要符号表和缩略词表的实现代码，方便用户修改。修改方式见Wiki：[修改格式](https://github.com/shifujun/UESTCthesis/wiki/%E4%BD%BF%E7%94%A8%E4%B8%BB%E8%A6%81%E7%AC%A6%E5%8F%B7%E8%A1%A8%E5%92%8C%E7%BC%A9%E7%95%A5%E8%AF%8D%E8%A1%A8#%E4%BF%AE%E6%94%B9%E6%A0%BC%E5%BC%8F "修改格式")；
- 删除主要符号表和缩略词表中按首字母分组具有的分组间距。恢复方式见Wiki：[恢复分组间距](https://github.com/shifujun/UESTCthesis/wiki/%E4%BD%BF%E7%94%A8%E4%B8%BB%E8%A6%81%E7%AC%A6%E5%8F%B7%E8%A1%A8%E5%92%8C%E7%BC%A9%E7%95%A5%E8%AF%8D%E8%A1%A8#%E6%81%A2%E5%A4%8D%E5%88%86%E7%BB%84%E9%97%B4%E8%B7%9D "恢复分组间距")；
- 删除了嵌套的枚举环境中第2、3、4级的额外标签后间距。
- fix bug：目录页眉中“目录”间应无空格；
- fix bug：english选项下目录标题、子图环境标题标签“图”字、图表目录页眉是中文的问题；
- fix issue #31：clean.sh脚本里需要删除*.glsdefs文件;
- 在clean脚本中保留了log文件，方便查错。

## 2014年3月12日：v1.0.1 ##


- 将数学公式中的字体改回CM字体。此前v0.6.8中有所疏忽，只将特殊符号
改回。现在数学公式字体应该和大多数会议论文中的字体一致了。
## 2014年3月12日：v1.0.0 ##


- 因研究生院正式推荐使用本模板，故将版本号改为v1.0.0。可称为正式版
了。
- 本版本除版本号外，和v0.6.9完全一致。
## 2014年3月8日：v0.6.9 - 2013年1月14日：v0.2##
见`example`范例中的更新日志一章。

## 源代码更新日志 ##
模板使用dtx编写方式，在source目录中可以编译出模板的源代码文档。其中也有更新日志，包括一些程序内部方面的改动日志。