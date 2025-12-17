git_prompt() {
    local branch=""
    local status=""
    local color=""
    local symbols=""
    
    # Check if we're in a git repo
    if ! git rev-parse --git-dir > /dev/null 2>&1; then
        return
    fi
    
    # Get current branch
    branch=$(git symbolic-ref --short HEAD 2>/dev/null || git rev-parse --short HEAD 2>/dev/null)
    
    # Check various git states
    local staged=$(git diff --cached --numstat 2>/dev/null | wc -l)
    local modified=$(git diff --numstat 2>/dev/null | wc -l)
    local untracked=$(git ls-files --others --exclude-standard 2>/dev/null | wc -l)
    
    # Build status symbols
    if [[ $staged -gt 0 ]]; then
        symbols="${symbols}+"  # Staged changes
    fi
    
    if [[ $modified -gt 0 ]]; then
        symbols="${symbols}*"  # Modified files
    fi
    
    if [[ $untracked -gt 0 ]]; then
        symbols="${symbols}%"  # Untracked files
    fi
    
    # Determine color
    if [[ -z $symbols ]]; then
        color="\033[32m"  # Green - clean
        symbols="✓"
    elif [[ $staged -gt 0 ]]; then
        color="\033[3;37m"  # Yellow - staged changes
    else
        color="\033[0;40m " # 38;5;178m  # Red - unstaged changes
    fi
    
    echo -e " ${color}(${branch} ${symbols})\033[0m"
}


function hlp(){
  local fst="\u001B[38;5;2m"
  local sec="\u001B[38;5;228m"
  local rst="\u001B[0m"

  echo -e "${fst}* -> ${sec}unstaged${rst}" 
  echo -e "${fst}+ -> ${sec}staged${rst}"
  echo -e  "${fst}$ ${sec}if something is stashed${rst}"
  echo -e "${fst}% -> ${sec}untrcaked files${rst}"
  echo -e "${fst}< ${sec}behind ${fst}> ${sec}ahead ${fst}<> ${sec}diverged ${fst}= ${sec}equal${rst}"
}

GIT_PS1_SHOWUPSTREAM="auto"
GIT_PS1_SHOWUNTRACKEDFILES=1
GIT_PS1_SHOWSTASHSTATE=1
GIT_PS1_SHOWDIRTYSTATE=1
