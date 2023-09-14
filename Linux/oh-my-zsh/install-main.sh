#!/bin/sh

# 下载install自动化脚本
wget --no-cookie --no-check-certificate https://github.com/NingYaFelix/Terminal/blob/main/Linux/oh-my-zsh/install.sh ${HOME}/install.sh

# 添加权限
chmod +x install.sh

# 下载自动补全和高亮插件
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting
git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions

# 下载修改过后的zshrc文件
wget --no-cookie --no-check-certificate https://github.com/NingYaFelix/Terminal/blob/main/Linux/oh-my-zsh/.zshrc ${HOME}/.zshrc

# 重启配置
source .zshrc
