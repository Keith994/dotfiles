set -x GEM_PATH ~/.gem/ruby/2.7.0/bin
set -x GOPLS_PATH ~/.go/bin
set -x YARN_PATH ~/.yarn/bin
set -x LOCAL_PATH ~/.local/bin
set -x DOOM_PATH ~/.emacs.d/bin

set -x PATH $GEM_PATH $GOPLS_PATH $YARN_PATH $LOCAL_PATH $DOOM_PATH $PATH

set -x GOPATH ~/.go
set -x FLUTTER_STORAGE_BASE_URL "https://mirrors.bfsu.edu.cn/flutter"
set -x PUB_HOSTED_URL "https://mirrors.bfsu.edu.cn/dart-pub"
set -x ANDROID_HOME /opt/android-sdk
set -x XDG_CONFIG_HOME $HOME/.config
set -x EDITOR 'nvim'
set -x RANGER_LOAD_DEFAULT_RC "false"
set -x TERM xterm-256color
set -x TERM_ITALICS true
set -x GLFW_IM_MODULE ibus
