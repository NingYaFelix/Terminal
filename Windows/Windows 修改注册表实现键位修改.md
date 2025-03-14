## 注册表路径，右键新建二进制值文件，并命名为`ScanCode Map`,按规则编辑文件,注销或重启计算机即可用，不再使用则删除该表即可
```text
[HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Control\Keyboard Layout]
"Scancode Map"=hex:00,00,00,00,00,00,00,00,02,00,00,00,1d,00,3a,00,00,00,00,00 
```
## 注意：在注册表中输入时，需要将扫描码的高低字节交换一下
```text
1. 填充8个字节的 0
2. 第二行08处的前四个字节表示要修改键的个数 03 00 00 00 表示修改两个位置，即两组映射
3. [00 00] [00 01] 每四个字节为一组，表示两个键位，前两个字节表示 a, 后两个字节表示 b [ a 映射到 b ]
4. 末尾添加 四个字节的 0
```
![image](https://github.com/NingYaFelix/Terminal/assets/67058360/52c6bdf0-31ec-4676-8e12-436c1eb22ed5)

## 键位映射参考 键位码
```
特殊键
Application E0 5D
Backspace 00 0E
Caps Lock 00 3A 
Delete E0 53
End E0 4F
Enter 00 1C
Escape 00 01
HOME E0 47
Insert E0 52
Left Alt 00 38
Left Ctrl 00 1D
Left Shift 00 2A
Left Windows E0 5B
Num Lock 00 45
Page Down E0 51
Page Up E0 49
Power E0 5E
PrtSc E0 37
Right Alt E0 38
Right Ctrl E0 1D
Right Shift 00 36
Right Windows E0 5C
Scroll Lock 00 46
Sleep E0 5F
Space 00 39
Tab 00 0F
Wake E0 63

数字小键盘

0 00 52
1 00 4F
2 00 50
3 00 51
4 00 4B
5 00 4C
6 00 4D
7 00 47
8 00 48
9 00 49
- 00 4A
* 00 37
. 00 53
/ 00 35
+ 00 4E
Enter E0 1C

功能键

F1 00 3B
F2 00 3C
F3 00 3D
F4 00 3E
F5 00 3F
F6 00 40
F7 00 41
F8 00 42
F9 00 43
F10 00 44
F11 00 57
F12 00 58
F13 00 64
F14 00 65
F15 00 66

箭头键

Down E0 50
Left E0 4B
Right E0 4D
Up E0 48

应用程序键

Calculator E0 21
E-Mail E0 6C
Media Select E0 6D
Messenger E0 11
My Computer E0 6B

QWERTY键

' " 00 28
- _ 00 0C
, < 00 33
. > 00 34
/ ? 00 35
; : 00 27
[ { 00 1A
| 00 2B
] } 00 1B
` ~ 00 29
= + 00 0D
0 ) 00 0B
1 ! 00 02
2 @ 00 03
3 # 00 04
4 $ 00 05
5 % 00 06
6 ^ 00 07
7 & 00 08
8 * 00 09
9 ( 00 0A
A 00 1E
B 00 30
C 00 2E
D 00 20
E 00 12
F 00 21
G 00 22
H 00 23
I 00 17
J 00 24
K 00 25
L 00 26
M 00 32
N 00 31
O 00 18
P 00 19
Q 00 10
R 00 13
S 00 1F
T 00 14
U 00 16
V 00 2F
W 00 11
X 00 2D
Y 00 15
Z 00 2C

F-Lock键

Close E0 40
Fwd E0 42
Help E0 3B
New E0 3E
Office Home E0 3C
Open E0 3F
Print E0 58
Redo E0 07
Reply E0 41
Save E0 57
Send E0 43
Spell E0 23
Task Pane E0 3D
Undo E0 08

多媒体播放键

Mute E0 20
Next Track E0 19
Play/Pause E0 22
Prev Track E0 10
Stop E0 24
Volume Down E0 2E
Volume Up E0 30

非英文键

¥ - 00 7D
€ E0 45

国际键盘

Next to Enter E0 2B
Next to L-Shift E0 56

Brazilian键盘

Next to R-Shift E0 73

Far East键盘

DBE_KATAKANA E0 70
DBE_SBCSCHAR E0 77
CONVERT E0 79
NONCONVERT E0 7B

Dell键盘上的特殊键

Internet E0 01

Logitech键盘上的特殊键

iTouch E0 13
Shopping E0 04
Webcam E0 12

浏览器键

Back E0 6A
Favorites E0 66
Forward E0 69
HOME E0 32
Refresh E0 67
Search E0 65
Stop E0 68

微软自然多媒体键盘

My Pictures E0 64
My Music E0 3C
Mute E0 20
Play/Pause E0 22
Stop E0 24
+ (Volume up) E0 30
- (Volume down) E0 2E
|<< (Previous) E0 10
>>| (Next) E0 19
Media E0 6D
Mail E0 6C
Web/Home E0 32
Messenger E0 05
Calculator E0 21

Log Off E0 16
Sleep E0 5F
Help(on F1 key) E0 3B
Undo(on F2 key) E0 08
Redo(on F3 key) E0 07

Fwd (on F8 key) E0 42
Send(on F9 key) E0 43
Spell(on F10 key) E0 23
Save(on F11 key) E0 57
Print(on F12 key) E0 58
```
