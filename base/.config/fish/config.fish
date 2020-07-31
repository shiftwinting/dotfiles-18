set -x EDITOR /usr/local/bin/nvim
set -x FZF_DEFAULT_OPTS "--preview=\"bat --color=always --style numbers,grid,changes {}\""
set -x FZF_DEFAULT_COMMAND "fd --color=never"

set -x PATH $PATH $HOME/.luarocks/bin $HOME/scripts $HOME/.local/bin

function nvimfzf
    nvim +"Files! $argv[1]"
end

function man
	nvim +"Man $argv[1]" +only 
end

function tig
    nvim +G +only
end

abbr vi nvim
abbr py python3.7
abbr nf nvimfzf
abbr zf 'zathura (fd ".*.pdf" | fzf)'
abbr lz lazygit

alias pip pip3.7
alias python python3.7
set -g fish_user_paths "/usr/local/sbin" $fish_user_paths

function fish_user_key_bindings
    # Execute this once per mode that emacs bindings should be used in
    # fish_default_key_bindings -M insert
    # Without an argument, fish_vi_key_bindings will default to
    # resetting all bindings.
    # The argument specifies the initial mode (insert, "default" or visual).
    fish_vi_key_bindings insert
end

function fish_mode_prompt
    if test "$fish_key_bindings" = "fish_vi_key_bindings"
        or test "$fish_key_bindings" = "fish_hybrid_key_bindings"
        switch $fish_bind_mode
			case default
                echo '[2 q' # block
            case insert
                echo '[6 q' # pipe
            case replace_one
                echo '[4 q' # underline
            case replace
                echo '[4 q' # underline
            case visual
                echo '[2 q' # block
#            case default
#                echo '[2q' # block
#            case insert
#                echo '[6q' # pipe
#            case replace_one
#                echo '[4q' # underline
#            case visual
#                echo '[2q' # blokc
        end
    end
end

set fish_cursor_default     block      blink
set fish_cursor_insert      line       blink
set fish_cursor_replace_one underscore blink
set fish_cursor_visual      block

set -x LPASS_ASKPASS /home/thomas/scripts/askpass.sh
set -x LPASS_PINENTRY /home/thomas/scripts/askpass.sh

# source ~/.iterm2_shell_integration.(basename $SHELL)
source ~/.cargo/env
