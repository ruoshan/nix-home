#!/bin/zsh

alias g=git
alias b=brew
alias cat="bat -pp"
alias c=cat
alias bs="brew formulae"
alias ,w="cd ~/Workplace/"
alias ,g="cd ~/Workplace/git/"
alias ,go="cd ~/Workplace/gopath"
alias ,t="cd ~/Workplace/test"
alias ,d="cd ~/Downloads"
alias ,nix="cd ~/.nix-defexpr/channels/nixpkgs"
alias l="exa"
alias ls="exa"
alias lt="exa -T -L2"
alias ltt="exa -T -L4"
alias la="ls -a"
alias -g G="|grep -Ii"
alias -g L="|less"
alias -g C="|pbcopy"
alias -g J="|jq"
alias -g Y="|bat -P -l yaml"
alias sd="sdcv --utf8-output --color"
alias gg="tig"
alias proxy="export http_proxy=socks5://127.0.0.1:7890; export https_proxy=socks5://127.0.0.1:7890"
alias ..="cd .."
alias ...="cd ../.."
alias ghgit='git config uesr.name "Ruoshan Huang"; git config user.email ruoshan.huang@gmail.com'
alias python="python3"
alias pip="pip3"
alias py="python3"
alias ag=rg
alias dlna="pkill minidlnad; minidlnad -f ~/.minidlna.conf -r -P /dev/null -t 60"
alias tf="terraform"
alias gb="git branch -a --format '%(refname:short)' | fzf | xargs -n 1 git checkout"
alias vi="nvim"
alias pa="ps aux"
alias em="emacsclient"
alias m="mvn"
alias .net="dotnet"
alias nix="noglob nix"
alias hm="home-manager"
alias vf='nvim $(fzf --reverse --height=20)'

alias ticdir="cd ~/Library/Application\ Support/com.nesbox.tic/TIC-80"

# docker
alias d="docker"
alias k="kubectl"
alias lsimg="docker image ls"
alias lsdk="docker ps"
alias dkcm="docker-compose"
#alias dkssh="nc -U ~/Library/Containers/com.docker.docker/Data/debug-shell.sock"
alias dkssh="colima ssh"
alias cm="colima"
alias m="limactl"
alias v="vagrant"
