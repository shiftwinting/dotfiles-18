function fish_prompt --description 'Write out the prompt, prepending the Debian chroot environment if present'
	echo -n -s (set_color $fish_color_cwd) (prompt_pwd) (set_color normal) ' > '
end
