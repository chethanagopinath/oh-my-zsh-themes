 # get current time
 current_time() {
    #echo "%D{%y/%m/%f} %@"
    echo "%@ %D{%m/%f/%y}"
 }
 
 #variables for git_prompt betterment
 ZSH_THEME_GIT_PROMPT_PREFIX=""
 ZSH_THEME_GIT_PROMPT_SUFFIX=""
 ZSH_THEME_GIT_PROMPT_DIRTY="*"
 ZSH_THEME_GIT_PROMPT_CLEAN="✨"
 
 directory(){
     echo "%{$fg[green]%}%2~%{$reset_color%}"
 }
 
 username(){
     echo "%{$fg[cyan]%}%n%{$reset_color%}"
 }
 
 PROMPT='$(username) %B|%b $(directory)
 %{$FG[140]%}$(git_prompt_info)%{$reset_color%} > '
 RPROMPT='%{$FG[white]%}$(current_time)%{$reset_color%}'
~                                                         
