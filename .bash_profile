echo 'FROM BASH_PROFILE'

parse_git_branch() {
    git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/ (\1)/'
}

purple=$(tput setaf 56);
orange=$(tput setaf 189);
grey=$(tput setaf 7);
pink=$(tput setaf 171);
green=$(tput setaf 118)

PS1="\[${orange}\]\h";
PS1+="\[${grey}\]: ";
PS1+="\[${green}\]\W ";
PS1+="\[${purple}\]\u";
PS1+="\[${orange}\]\$(parse_git_branch)"
PS1+="\[${grey}\]$ ";
export PS1;
