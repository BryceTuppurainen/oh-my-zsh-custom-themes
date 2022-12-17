# Echos every color in the color table
color_test() {
    for i in {100..250}; do
        echo "%{$FG[$i]%}$i%{$reset_color%}"
    done
}

username() {
   echo "%{$FG[196]%}%n%{$reset_color%}"
}

directory() {
    echo "%{$FG[231]%}%~%{$reset_color%}"
}

ZSH_THEME_GIT_PROMPT_PREFIX="%{$FG[196]%}<"
ZSH_THEME_GIT_PROMPT_SUFFIX="%{$reset_color%} "
ZSH_THEME_GIT_PROMPT_DIRTY="> %{$FG[231]%}*"
ZSH_THEME_GIT_PROMPT_CLEAN=">"

# PROMPT="$(color_test)"
PROMPT="$(username) $(directory) \$(git_prompt_info)%{$FG[196]%}$%{$reset_color%} %{$FG[231]%}"
