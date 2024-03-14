## 原神桌面图标配置

```sh
[Desktop Entry]
Comment[zh_CN]=
Comment=
Exec=env STEAM_COMPAT_CLIENT_INSTALL_PATH=/home/snemc/.local/share/Steam STEAM_COMPAT_DATA_PATH=/home/snemc/.local/share/Steam/steamapps/compatdata/3697796054 '/home/snemc/.local/share/Steam/steamapps/common/Proton - Experimental/proton' run '/home/snemc/windows_d/Program Files/Genshin Impact/Genshin Impact Game/YuanShen.exe'
GenericName[zh_CN]=
GenericName=
Icon=9216_launcher.0
MimeType=
Name[zh_CN]=原神
Name=原神
Path=/home/snemc/.wine/dosdevices/c:/Program Files/Genshin Impact
StartupNotify=true
StartupWMClass=launcher.exe
Terminal=false
TerminalOptions=
Type=Application
X-KDE-SubstituteUID=false
X-KDE-Username=

```

## 星铁桌面图标配置

```sh
[Desktop Entry]
Name=崩坏：星穹铁道
Exec=mangohud env  GST_PLUGIN_PATH="/home/snemc/.local/share/honkers-railway-launcher/runners/lutris-GE-Proton8-25-x86_64/lib64/gstreamer-1.0:/home/snemc/.local/share/honkers-railway-launcher/runners/lutris-GE-Proton8-25-x86_64/lib/gstreamer-1.0" LD_LIBRARY_PATH="/home/snemc/.local/share/honkers-railway-launcher/runners/lutris-GE-Proton8-25-x86_64/lib:/home/snemc/.local/share/honkers-railway-launcher/runners/lutris-GE-Proton8-25-x86_64/lib64:/home/snemc/.local/share/honkers-railway-launcher/runners/lutris-GE-Proton8-25-x86_64/lib64/wine/x86_64-unix:/home/snemc/.local/share/honkers-railway-launcher/runners/lutris-GE-Proton8-25-x86_64/lib/wine/i386-unix" WINEARCH="win64" WINEFSYNC="1" WINEPREFIX="/home/snemc/.local/share/honkers-railway-launcher/prefix" WINE_FULLSCREEN_FSR="1" WINE_FULLSCREEN_FSR_MODE="balanced" WINE_FULLSCREEN_FSR_STRENGTH="2" bash -c "'/home/snemc/.local/share/honkers-railway-launcher/runners/lutris-GE-Proton8-25-x86_64/bin/wine64'  '/home/snemc/.local/share/honkers-railway-launcher/patch/jadeite.exe' 'Z:\/home/snemc/.local/share/honkers-railway-launcher/HSR China/StarRail.exe' --  -window-mode exclusive "
Type=Application
StartupNotify=true
Path=/home/snemc/windows_d/Games/Star Rail/Game/
Icon=E900_launcher.0
StartupWMClass=launcher.exe

```

## 显卡模式配置

`envycontrol -s nvidia`  [来源](https://linweiyuan.github.io/2023/09/23/Arch-Linux-%E5%A4%9A%E6%98%BE%E5%8D%A1%E5%88%87%E6%8D%A2%E9%85%8D%E7%BD%AE.html)

##  帧率显示

`mangohud`

## 原神运行方案

- 使用steam 安装 原神安装文件,打开启动器,下载游戏(可选: 挂载 windows 分区找到游戏), 

- 库中添加原神游戏本体

- 查找proton `locate proton | rg "proton\$"   `

- 运行该命令需要两个变量 `STEAM_COMPAT_CLIENT_INSTALL_PATH=/home/snemc/.local/share/Steam`

  `STEAM_COMPAT_DATA_PATH=/home/snemc/.local/share/Steam/steamapps/compatdata/3697796054 `

- 打包成desktop文件

## 星铁运行方案

- 安装` the-honkers-railway-launcher `包
- 下载对应文件 
- 可能有文件下载不了 手动下载到目录 `/home/snemc/.local/share/honkers-railway-launcher/`
- 下载游戏或者创建软链接 `'HSR China' -> '/home/snemc/windows_d/Games/Star Rail/Game'`
- 重启应用配置
- 打开应用日志,查看启动命令
- 打包desktop文件

