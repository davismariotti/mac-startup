# Set PATH, MANPATH, etc., for Homebrew.
eval "$(/opt/homebrew/bin/brew shellenv)"

# Add Homebrew `/usr/local/bin` and User `~/bin` to the `$PATH`
PATH=/usr/local/bin:$PATH
PATH=$HOME/bin:$PATH
export PATH

# Load the shell dotfiles, and then some:
# * ~/.path can be used to extend `$PATH`.
# * ~/.extra can be used for other settings you don’t want to commit.
for file in ~/.{path,bash_prompt,exports,aliases,functions,extra,bashrc}; do
  [ -r "$file" ] && source "$file"
done
unset file


export PATH=$PATH:~/Library/Android/sdk/platform-tools/
export PATH=~/.npm-global/bin:$PATH
export PATH="$HOME/.jenv/bin:$PATH"
eval "$(jenv init -)"

test -e "${HOME}/.iterm2_shell_integration.bash" && source "${HOME}/.iterm2_shell_integration.bash"

complete -C '/opt/homebrew/bin/aws_completer' aws
complete -C '/opt/homebrew/bin/aws_completer' awslocal
export PATH="/opt/homebrew/opt/libpq/bin:$PATH"
export PATH="/opt/homebrew/opt/node@14/bin:$PATH"
export PATH="/opt/homebrew/opt/gnu-units/libexec/gnubin:$PATH"

export BASH_SILENCE_DEPRECATION_WARNING=1

fortune