if status is-interactive
    # Commands to run in interactive sessions can go here
    jenv init - |sed '/hash -r/d' | psub| source
    starship init fish | source
    zoxide init fish | source
end
function fish_greeting
end
