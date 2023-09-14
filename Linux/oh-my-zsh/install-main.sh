#!/bin/sh

# 拉取整个库到用户目录
git clone http://github.com/NingYaFelix/Terminal.git ${HOME}/zsh

#整理拉取的目录
mv /root/zsh/Linux/oh-my-zsh ${HOME}/oh-my-zsh
rm -rf ${HOME}/zsh
cd ${HOME}/zsh
rm -rf install-main.sh

# 添加权限
chmod +x install.sh
./install.sh

# 下载自动补全和高亮插件
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting
git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions

#移动zshrc
mv .zshrc ${HOME}/

# 重启配置
source .zshrc
