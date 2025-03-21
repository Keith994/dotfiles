alias pyay 'ALL_PROXY=socks5://127.0.0.1:1080 yay'
alias pch 'proxychains4 -q'
alias pdoom 'pch doom'
alias pvim 'pch nvim'
alias pacun 'sudo pacman -Rns'
alias pacs 'paru -Ss'
alias pacU 'paru -Syu'
alias paci 'paru -S'
alias pacq 'pacman -Si'
alias pacQ 'paru -Qi'
alias pacS 'paru -Ss'
alias gd 'git clone --depth 1'
alias gc 'git clone'
alias gsp 'git submodule foreach git pull'
alias ipy ipython
alias py python
alias ra joshuto
alias jo joshuto
alias ppt wpp
alias xls et
alias word wps
alias sra 'sudo -E ranger'
alias vim nvim
alias vi nvim
alias sudo 'sudo -E'
alias reload 'source ~/.zshrc'
alias fcapp 'flutter create --template app --project-name'
alias fcmodule 'flutter create --template module --project-name'
alias fcpackage 'fluter create --template package --project-name'
alias fcplugin 'flutter create --template plugin --project-name'
alias frunh 'flutter run -d CSX' #华为手机
alias cdiff colordiff
alias ex exit
alias lg lazygit
alias nm "nmtui && cat ~/vpn.txt | sed -n '1p' | xsel --clipboard"
alias vv 'wd dev && vim vpn.txt'
alias x extract
alias ld lazydocker
alias ls="exa --color=always --icons --group-directories-first"
alias la 'exa --color=always --icons --group-directories-first --all'
alias ll 'exa --color=always --icons --group-directories-first --all --long'
alias vpn 'export http_proxy=http://127.0.0.1:1080 && export https_proxy=http://127.0.0.1:1080 && export all_proxy=http://127.0.0.1:1080'
alias edge miscrosoft-edge-stable
alias bc calc
# alias clash 'bash /home/keith/.local/share/clash/clash.sh'
# alias j11 'jenv local 11.0.9.1 && set -x JAVA_HOME $(jenv javahome)'
alias j11 'jenv local 11.0.9.1'
alias j17 'jenv local openjdk64-17.0.13'
alias redis-cli 'reds\{6\}-cli'
alias redis 'reds\{6\}-cli'
alias td tldr

alias tdyeing 'tmux attach-session -t dyeing-edge'
alias tedge 'tmux attach-session -t dyeing-edge'
alias tlogs 'tmux attach-session -t logs'
alias tcloud 'tmux attach-session -t dyeing-cloud'
alias tconfig 'tmux attach-session -t configs'
alias tlearn 'tmux attach-session -t learn'
alias ledge 'tmuxp load ~/.config/tmuxp/edge.yaml'
alias lcloud 'tmuxp load ~/.config/tmuxp/cloud.yaml'
alias llogs 'tmuxp load ~/.config/tmuxp/logs.yaml'
alias llearn 'tmuxp load ~/.config/tmuxp/learn.yaml'
