set -x GEM_PATH ~/.gem/ruby/2.7.0/bin
set -x GOPLS_PATH /home/keith/.go/bin
set -x YARN_PATH ~/.yarn/bin
set -x LOCAL_PATH ~/.local/bin
set -x DOOM_PATH ~/.emacs.d/bin
set -x CargoBin ~/.cargo/bin
set -x MSSQL /opt/mssql/bin/
set -x MSTOOLS /opt/mssql-tools/bin/

set -x PATH $GEM_PATH $GOPLS_PATH $YARN_PATH $LOCAL_PATH $DOOM_PATH $PATH $CargoBin $MSSQL $MSTOOLS

set -x GOPATH ~/.go
set -x GOPROXY https://proxy.golang.com.cn,direct
set -x GOPRIVATE gitlab.szzhijing.com
set -x GIT_TERMINAL_PROMPT 1
set -x ANDROID_HOME /opt/android-sdk
set -x XDG_CONFIG_HOME $HOME/.config
set -x EDITOR nvim
set -x RANGER_LOAD_DEFAULT_RC false
set -x TERM xterm-256color
set -x TERM_ITALICS true
set -x GLFW_IM_MODULE ibus
set -gx EDITOR /usr/bin/nvim
set -U __done_min_cmd_duration 5000  # default: 5000 ms

set -x LC_ALL "C.UTF-8"
set -x CHEAT_USE_FZF true

# set -x JAVA_HOME $(jenv javahome)
