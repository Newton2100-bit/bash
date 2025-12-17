
# PS1="\[\033[1;34m\]\u\[\033[0m\] [$$] [\j] in \[\033[1;33m\]\w\[\033[0m\]\$(__git_ps1 ' on \[\033[1;36m\]%s\[\033[0m\]')\n\$([ $? -eq 0 ] && echo ' ➜  ' || echo -e \e[91m' ✘ '\e[0m)"


# Advanced git prompt function

# Set prompt
# PS1='\[\033[36m\]\u@\h\[\033[0m\]:\[\033[5;34m\]\w\033[0m$(git_prompt)\n  ➜  ' || echo -e \e[91m' ✘ '\e[0m)"


# Advanced git prompt function

# Set prompt
PS1='\[\033[36m\]\u@\h\[\033[0m\]: [\[\033[38;5;157m\] \W \033[0m] $(git_prompt)\n ➜ '
# PS1='\[\033[36m\]\u [\W] \h\[\033[0m\] \e[38;5;157m**\e[0m $(git_prompt) \# .. \!  -> '
# PS1='\[\033[36m\]\u [\W] \h\[\033[0m\] \e[38;5;157m**\e[0m $(git_prompt) \# .. \! ➜ '

# \u for user name
# \h for host name 
# \H for full host name
# \w for cwd(current working directory)
# \W for base name in the cwd
# \t for time in HH:MM:SS
# \@ for time in 12 hr clock system
# \d for date (weekday)
# \! history number.
# \# command number 
# \$ for normal user # for $ for root.
