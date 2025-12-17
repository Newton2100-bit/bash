end="\[\033[0m\]"
prompt=(
	# Palette 1: Soft Pastels (matching \033[38;5;157m vibe)
	"\[\033[38;5;157m\]"  # Soft mint green (reference)
	"\[\033[38;5;183m\]"  # Lavender
	"\[\033[38;5;189m\]"  # Pale blue
	"\[\033[38;5;219m\]"  # Soft pink
	"\[\033[38;5;222m\]"  # Pale yellow
	"\[\033[38;5;180m\]"  # Tan/beige
	"\[\033[38;5;152m\]"  # Light teal
	"\[\033[38;5;225m\]"  # Light rose
	"\[\033[38;5;194m\]"  # Pale lime
	"\[\033[38;5;147m\]"  # Periwinkle
	"\[\033[38;5;229m\]"  # Cream
	"\[\033[38;5;195m\]"  # Aqua mint
	"\[\033[38;5;182m\]"  # Mauve
	"\[\033[38;5;159m\]"  # Cyan pastel
	"\[\033[38;5;223m\]"  # Peach

    # Palette 2: Darker Pastels
    "\[\033[38;5;141m\]"  # Medium lavender
    "\[\033[38;5;117m\]"  # Sky blue
    "\[\033[38;5;211m\]"  # Rose pink
    "\[\033[38;5;186m\]"  # Light gold
    "\[\033[38;5;144m\]"  # Sage
    "\[\033[38;5;116m\]"  # Teal
    "\[\033[38;5;218m\]"  # Blush
    "\[\033[38;5;156m\]"  # Lime green
    "\[\033[38;5;111m\]"  # Cornflower
    "\[\033[38;5;187m\]"  # Vanilla
    "\[\033[38;5;158m\]"  # Seafoam
    "\[\033[38;5;176m\]"  # Dusty rose
    "\[\033[38;5;123m\]"  # Turquoise
    "\[\033[38;5;216m\]"  # Coral

    # Palette 3: Vibrant But Cohesive
    "\[\033[38;5;177m\]"  # Plum
    "\[\033[38;5;81m\]"   # Bright cyan
    "\[\033[38;5;213m\]"  # Hot pink
    "\[\033[38;5;221m\]"  # Golden yellow
    "\[\033[38;5;179m\]"  # Orange tan
    "\[\033[38;5;122m\]"  # Sea green
    "\[\033[38;5;217m\]"  # Salmon
    "\[\033[38;5;191m\]"  # Bright lime
    "\[\033[38;5;105m\]"  # Purple
    "\[\033[38;5;228m\]"  # Lemon
    "\[\033[38;5;87m\]"   # Aqua
    "\[\033[38;5;175m\]"  # Pink mauve
    "\[\033[38;5;51m\]"   # Cyan
    "\[\033[38;5;215m\]"  # Apricot
)
length=${#prompt[@]}


export turntaking=0;
declare one three four
change_color(){
	if  (( turntaking % 5 == 0 )); then
		# The actual random colors
		three=${prompt[ (( RANDOM % length )) ]}
		four=${prompt[  (( RANDOM % length )) ]}
		one=${prompt[ (( RANDOM % length )) ]}
	fi
	(( turntaking++ ))
	PS1="${one}( \W )$end ${three}#${end} ${three}✓${end}${four} "
}
change_color
PS1="${one}( \W )$end ${three}#${end} ${three}✓${end}${four} "
BASH_PROMPT=change_color
