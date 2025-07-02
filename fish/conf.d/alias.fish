alias pacun 'sudo pacman -Rns'
alias pacs 'paru -Ss'
alias pacU 'paru -Syu'
alias paci 'paru -S'
alias pacq 'paru -Si'
alias pacQ 'paru -Qi'
alias pacS 'paru -Ss'
alias gd 'git clone --depth 1'
alias gc 'git clone'
alias gsp 'git submodule foreach git pull'
alias ipy ipython
alias py python
alias ppt wpp
alias xls et
alias word wps
alias vim nvim
alias vi nvim
alias sudo 'sudo -E'
alias fcapp 'flutter create --template app --project-name'
alias fcmodule 'flutter create --template module --project-name'
alias fcpackage 'fluter create --template package --project-name'
alias fcplugin 'flutter create --template plugin --project-name'
alias frunh 'flutter run -d CSX' #华为手机
alias cdiff colordiff
alias ex exit
alias nm "nmtui && cat ~/vpn.txt | sed -n '1p' | xsel --clipboard"
alias vv 'wd dev && vim vpn.txt'
alias ld lazydocker
alias lg lazygit
alias ls "exa --color=always --icons --group-directories-first"
alias la 'exa --color=always --icons --group-directories-first --all'
alias ll 'exa --color=always --icons --group-directories-first --all --long'
alias vpn 'export http_proxy=http://127.0.0.1:1080 && export https_proxy=http://127.0.0.1:1080 && export all_proxy=http://127.0.0.1:1080'
alias unvpn 'export http_proxy= && export https_proxy= && export all_proxy='
alias miscrosoft-edge-stable '/usr/bin/microsoft-edge-stable --inprivate --enable-features=WaylandWindowDecorations --ozone-platform-hint=auto --ozone-platform=wayland --enable-wayland-ime'
alias bc calc
# alias clash 'bash /home/keith/.local/share/clash/clash.sh'
# alias j11 'jenv local 11.0.9.1 && set -x JAVA_HOME $(jenv javahome)'
alias j11 'jenv local 11.0.9.1'
alias j17 'jenv local openjdk64-17.0.13'
alias redis-cli 'reds\{6\}-cli'
alias redis 'reds\{6\}-cli'
alias td tldr
alias tdupdate 'tldr --update'

alias tedge 'zellij attach dyeing-edge || zellij --session dyeing-edge'
alias tlogs 'zellij attach logs || zellij --session logs'
alias tcloud 'zellij attach dyeing-cloud || zellij --session dyeing-cloud'
alias tconfig 'zellij attach configs || zellij --session configs'
alias tlearn 'zellij attach learn || zellij --session learn'
alias dsession 'zellij delete-session 2>/dev/null '
