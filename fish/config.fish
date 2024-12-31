if status is-interactive
    # Commands to run in interactive sessions can go here
    jenv init - | source
    starship init fish | source
    zoxide init fish | source
end
function fish_greeting
end
