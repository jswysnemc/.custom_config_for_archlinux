---

---

> [typora破解过程](https://www.52pojie.cn/thread-1710146-1-1.html)  自动注入工具代码地址：https://github.com/DiamondHunters/NodeInject
>
> 破解验证脚本地址：https://github.com/DiamondHunters/NodeInject_Hook_example

### 破解步骤:

1. 找到`/usr/share/typora/resources/node_modules.asar`
2. 安装 `asar`包
3. 解压 `asar extract ./resources/node_modules.asar ./Dir` 
4. 找到`/usr/share/typora/asarjj/raven/hook.js` 文件
5. 分别将这个文件放入两个源码中替代 然后编译
6. 其中一个 `node_inject`放入typora安装目录中运行
7. 第二个 `license-gen` 直接运行得到编码



