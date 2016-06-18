# dependencies目录制作方法

这是一个通用的方法，可以让LaTeX模板在任何版本的发行版环境中正常编译。这个方法可以解决许多有价值的但是作者不再维护的模板不能在较新的TeX发行版中编译的问题。

UESTCthesis模板从1.2.6开始，在模板的template目录下新增了一个dependencies目录。通过模板提供的编译脚本编译，可以使模板依赖的其他宏包都优先使用dependencies目录中的文件。这样模板无论在什么版本的TeX发行版中使用都能正常编译。更重要的是，一个模板依赖的宏包很可能在更新版本后依然能正常编译，但是它的某些实现效果有所变化，致使用户在使用模板时编译出的结果和作者设计的不一致。由于模板还能正常编译，用户难以发现这种错误。

这些问题归根结底都是由于LaTeX的宏包设计虽然具有版本的概念，但是在声明依赖一个宏包时只能声明所依赖的宏包的最低版本。仅当用户环境中的宏包版本低于模板声明的版本时编译才会报错。更多时候，模板在依赖宏包时根本不声明所依赖宏包的版本。对于更新版本的宏包，LaTeX总是认为是更好的。以至于ctan.org都只保留宏包的最新版本。然后现实的情况是，经常出现一个模板在一处可以正常编译，拿到另一台计算机上就不能正常编译了。所以，LaTeX宏包机制也需要像大多数软件构建一样的依赖版本控制。

## Kpathsea

要解决这个问题就要先搞清LaTeX是如何找到宏包文件的。TeX环境的所有程序都使用一个叫做Kpathsea的程序来查找文件。当TeX程序需要一个文件时，它就会问Kpathsea这个文件的路径。所以我们需要做的就是在Kpathsea的搜索路径中添加一个优先级最高的路径，并且把我们希望编译中使用的文件放在这个路径中。这样，在编译过程中TeX就会使用我们指定的文件（比如xxx.sty的1.0版本），而不是TeX发行版中的版本（比如xxx.sty的2.0版本）。

关于Kpathsea的详细说明可以看这篇官方介绍：
[Kpathsea: A library for path searching](http://tug.org/texinfohtml/kpathsea.html)

## 制作dependencies目录的主要步骤

1. 在一次正常编译找出编译中所有依赖的文件。
2. 将依赖的文件复制出来放到一个目录中。
3. 给这个目录建立ls-R文件。
4. 在编译脚本中加入环境变量，将这个目录置于Kpathsea搜索路径的最前面。
5. 将这个目录和编译脚本做为模板的一部分一同发布。

## 具体操作

可以从log文件中找出编译过程中所有依赖的文件。为了更容易地找出来，我们在可以在tex文件的导言区加上\listfiles命令，之后编译输出的log文件中最后会有一段*File List*，如下：

```
*File List*
uestcthesis.cls    2016/03/06 v1.2.5 UESTC thesis class
zhwindowsfonts.tex    2016/02/02 v2.3 Windows font map loader for pdfTeX and DV
IPDFMx (CTEX)
contents/appendix.tex
publications.bbl
***********
```

将这段内容复制出来。其中宽度超出80字符的行如前面例子中的zhwindowsfonts.tex，需要手动删掉回车。让每个文件只有一行。
再识别出自己模板中的文件，如uestcthesis.cls是自己的模板，contents/appendix.tex和publications.bbl是论文内容。这些都删掉。
剩余的行应该是模板依赖的所有其他宏包的文件了。

为了将这些文件复制出来，我们需要获得这些文件的路径。这需要借助`kpsewhich`命令。

命令`kpsewhich ctex.sty zhwindowsfonts.tex`可以得到类似如下的输出：

```
/usr/local/texlive/2015/texmf-dist/tex/latex/ctex/ctex.sty
/usr/local/texlive/2015/texmf-dist/tex/generic/ctex/zhwindowsfonts.tex
```

也就是说，如果我们将前面复制出的内容整理成一行以空格分隔的文件名，就可以做为`kpsewhich`命令的参数，从而得到这些文件的路径了。

将前面复制出来的文件手工删去超过80字符的换行后，每一行都是：

文件名+4个空格+日期+1个空格+版本号+1个空格+说明

所以我们可以用正则表达式替换来处理这些内容。

用正则表达式“^\s+”去掉行首的空白。

用正则表达式“    .*”去掉文件名后面的版本描述。

用正则表达式”\n"替换为“ ”将所有文件名连成空格分隔的一行，如"zhwindowsfonts.tex ctex.sty".

然后将这一行复制到命令“kpsewhich ”的后面做为参数。将输出结果保存到文件。

每一行形如：

```
/usr/local/texlive/2015/texmf-dist/tex/latex/ctex/ctexbook.cls
```

我们需要把这些文件复制到新建目录dependencies中，可以保留tex目录结构，形成路径形如：

```
./dependencies/tex/latex/ctex/ctexbook.cls
```

那么在复制前首先需要创建各子目录，所以需要把

```
/usr/local/texlive/2015/texmf-dist/tex/latex/ctex/ctexbook.cls
```

用正则表达式替换为：

```
mkdir -p ./dependencies/tex/latex/ctex
```

先将“/usr/local/texlive/2015/texmf-dist/”替换为“./dependencies/”

再用正则表达式“/[^/]+$”匹配路径末尾的文件名，删除掉。

最后再在每一行前面添加上"mkdir -p "，然后保存为mkdir.sh执行就可以了。

之后还需要构造一个复制文件的脚本cp.sh。每一行需要由

```
/usr/local/texlive/2015/texmf-dist/tex/latex/ctex/ctexbook.cls
```

处理为：

```
cp /usr/local/texlive/2015/texmf-dist/tex/latex/ctex/ctexbook.cls ./dependencies/tex/latex/ctex/ctexbook.cls
```

可以用正则表达式“(/usr/local/texlive/2015/texmf-dist/tex/)(.*)”替换为“cp $1$2 ./dependencies/$2”。

构造好dependencies目录后还需要在dependencies目录中生成ls-R文件。用命令`mktexlsr ./dependencies`即可生成一个正确的ls-R文件。

最后，在编译脚本的最前面加上两行设置环境变量的命令：

Shell脚本中

```
export TEXINPUTS=./dependencies//:
export TEXMFDBS=./dependencies:
```

Windows批处理bat文件中

```
set TEXINPUTS=./dependencies//;
set TEXMFDBS=./dependencies;
```

其中“//”表示包含子目录。“:”和“;”表示我们只是将dependencies目录放在了搜索路径的最前面，这使得当dependencies目录中找不到编译所需要的文件时，程序还能在原路径中继续查找文件。这样模板的使用者如果自行声明了新的宏包依赖，而dependencies目录中没有，还可以正常使用TeX发行版中所安装的宏包。

## 遗留问题

本说明所给出的使用\listfiles命令列出所有依赖文件的方法并不十分完整。\listfiles命令只能列出LaTeX宏包，不能列出宏包自身将要读取的文件。这一点可以通过UESTCthesis在MiKTeX的basic版本编译中得到验证，MiKTeX还是会提示缺少个别文件需要联网下载。不过通过将\listfiles列出的文件都打包到模板中，UESTCthesis已经能很好的在多数发行版上编译了。像这样遗漏的文件可以通过将/usr/local/texlive/2015/texmf-dist/删除再编译，如果编译失败，就能发现缺少哪些文件了。

还有一个问题是，有一些TeX发行版不使用Kpathsea管理文件。MiKTeX的旧版本就曾不使用。国内比较流行的CTeX 2.9.2套装所包装的MiKTeX就不能正确地遵从TEXINPUTS的定义从dependencies目录中读取文件。但是能够肯定的是texlive的各个版本都是支持的，准确的说是Web2C的发行版都是支持的。所以，如果一个模板只能在CTeX 2.9.2上或者更旧的版本上编译成功，而在TeXLive 2016这种较新的发行版上不能编译成功，可以通过本方法将其依赖打包到模板中。然后可以在较新的TeXLive 2016上正常编译。
