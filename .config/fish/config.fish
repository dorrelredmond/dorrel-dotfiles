if status is-interactive
    # Commands to run in interactive sessions can go here
end

## Basic Settings

set fish_greeting
export "MICRO_TRUECOLOR=1"
set -g theme_display_date no 
set -g theme_nerd_fonts yes 
set -g theme_newline_cursor yes
fish_config theme choose catppuccin-mocha

## PATH Additions
fish_add_path ~/.spicetify

## Abbreviations

# Cargo Abbreviations
abbr -a -- cb 'cargo build'
abbr -a -- cc 'cargo check'
abbr -a -- cb 'cargo build'
abbr -a -- cc 'cargo check'
abbr -a -- cdo 'cargo doc --open'
abbr -a -- cr 'cargo run'

# Git Abbreviations
abbr -a -- gaa 'git add -A'
abbr -a -- ga 'git add'
abbr -a -- gbd 'git branch --delete'
abbr -a -- gb 'git branch'
abbr -a -- gc 'git commit'
abbr -a -- gcm 'git commit -m'
abbr -a -- gcob 'git checkout -b'
abbr -a -- gco 'git checkout'
abbr -a -- gd 'git diff'
abbr -a -- gl 'git log'
abbr -a -- gpl 'git pull'
abbr -a -- gp 'git push'
abbr -a -- gpom 'git push origin main'
abbr -a -- gs 'git status'
abbr -a -- gst 'git stash'
abbr -a -- gstp 'git stash pop'

# Wallpaper Abbreviations
abbr -a -- chwall 'awww img --transition-type any --transition-pos top-right'
abbr -a -- chwall1 'awww img --transition-type any --transition-pos top-right -o HDMI-A-1'
abbr -a -- chwall2 'awww img --transition-type any --transition-pos top-right -o DP-1'

## Declare Starhip Prompt
starship init fish | source
