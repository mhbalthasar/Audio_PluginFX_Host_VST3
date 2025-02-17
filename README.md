# Audio_Inst_Hoster
 从Juce中编译的AudioPluginHost，配合批处理可以加载带有自主界面的其他VST3格式的音频乐器。例如SynthesizerV、VocaloidBeta等。尤其是因为某些原因，编辑器不带有Standalone版本或者Standalone版本无法正常运行的，开箱即用。

# SynthesizerV Sharp启动方法：
* 第一步：运行批处理SynthesizerV_Sharp
* 第二步：等待一会儿（SV自己要初始化）
* 第三步，双击界面中央的Synthesizer V Sharp Plugin(VST3）打开UI

# VXBeta启动方法：
* 第一步：运行批处理VXBeta_v2
* 第二步：等待一会儿
* 第三步，双击界面中央的VX_Beta打开UI

# 自行添加其他启动
* 第一步： Options -> Edit the list of avaliable Plug-ins (打开插件列表）
* 第二步： 在插件列表界面点 Options ->Scan for new or updated VST3 Plugin -> Scans (扫描本机插件）
* 第三步： 回到主界面 （如果已经扫过了，跳过这三步）
* 第四步： File -> New （新建渲染流）
* 第五步： 在界面上右键，选择要使用的Inst
* 第六步： 连接音频管线，如果Inst的图标上方有红色抽头，那么把红色抽头和MIDI Input下面对的红色抽头连接。Inst下方的绿色绿色抽头和Audio Output上方的绿色抽头连接（如果两个抽头最好一边一个，对应左右声道）
* 第七步： File -> Save 保存渲染图，保存到filtergraphs目录
* 第八步： 复制SynthesizerV_Sharp.bat批处理，修改第四行中的“SynthesizerV_Sharp.filtergraph”为你刚刚保存的文件（后缀名是filtergraph）

运行刚刚复制修改的批处理就可以了。

如果你不清楚批处理中的语句用途，暂时别乱改。


# 额外的命令行参数

/showWindow <插件名> 

* 添加该命令行后，运行时会自动启动该插件窗口

/asSingle

*  添加该命令行后，运行时会隐藏主窗体，使其看上去和正常应用程序一样（必须与/showWindow共存）。




