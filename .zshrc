
# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

# Lines configured by zsh-newuser-install
HISTFILE=~/.histfile
HISTSIZE=1000
SAVEHIST=0
setopt nomatch
unsetopt beep notify
bindkey -e
# End of lines configured by zsh-newuser-install

# The following lines were added by compinstall

zstyle ':completion:*' completer _expand _complete _ignored _approximate
zstyle ':completion:*' matcher-list '' 'm:{[:lower:]}={[:upper:]} m:{[:lower:][:upper:]}={[:upper:][:lower:]}' 'r:|[._-]=** r:|=**'
zstyle :compinstall filename '/home/bastien/.zshrc'

autoload -Uz compinit
compinit
# End of lines added by compinstall

source ~/.zsh_plugins.sh
# source ~/.zsh/themes/tjkirch.zsh-theme

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh

# ZSH autosuggestions config
ZSH_AUTOSUGGEST_HIGHLIGHT_STYLE="fg=#6d6d6d, underline"
ZSH_AUTOSUGGEST_STRATEGY=(history completion)
# This plugin provides a few widgets that you can use with bindkey:

#     autosuggest-accept: Accepts the current suggestion.
#     autosuggest-execute: Accepts and executes the current suggestion.
#     autosuggest-clear: Clears the current suggestion.
#     autosuggest-fetch: Fetches a suggestion (works even when suggestions are disabled).
#     autosuggest-disable: Disables suggestions.
#     autosuggest-enable: Re-enables suggestions.
#     autosuggest-toggle: Toggles between enabled/disabled suggestion

