# YouthfulCase's neovim and lsp configurations <br>
我的neovim和lsp们的配置。 <br>

## 展示 <br>
![style-view.png](style-view.png) <br>

## 安装 <br>
:PackerSync -> 下载插件 <br>
:Mason      -> 下载lsp <br>
clangd.toml中需手动修改编译器地址 <br>

## 键位 <br>

### 原生neovim操作 <br>
ctrl + s    对 :w --保存 <br>
q           对 :q! --退出 <br>
sd          对 ctrl + w + v --新增水平窗口 <br>
sw          对 ctrl + w + s --新增竖直窗口 <br>
e           对 :nohl --取消高亮 <br>

### 插件操作 <br>
ctrl + e    对 cmp.mapping.abort() --关闭自动补全提示
space       对 :NvimTreeToggle --开关nvim tree <br>  
ctrl + down 对 mc.lineAddCursor(1) --多加一个光标 <br>
