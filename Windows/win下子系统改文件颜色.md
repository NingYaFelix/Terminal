### 显示预设置，执行
```bash
cd ~/
dircolors -p > .dircolors
```

### 接着修改，用vi，可预览效果
```bash
vi .dircolors
```

### 找到如下条目，修改字体颜色和背景色如下
```bash
STICKY_OTHER_WRITABLE 30;46 # dir that is sticky and other-writable (+t,o+w)
OTHER_WRITABLE 30;46 # dir that is other-writable (o+w) and not sticky
```

### 修改完保存即可。

常见样式参考：
```text
00 　　　 //默认
01 　　 　//加粗
04 　 　　//下划线
05 　 　　//闪烁
07 　 　　//反显
08 　 　　//隐藏
文字颜色
30 — Black //黑色
31 — Red //红色
32 — Green //绿色
33 — Yellow //黄色
34 — Blue //蓝色
35 — Magenta //洋红色
36 — Cyan //蓝绿色
37 — White //白色
背景颜色
40 — Black
41 — Red
42 — Green
43 — Yellow
44 — Blue
45 — Magenta
46 — Cyan
47 – White
```
