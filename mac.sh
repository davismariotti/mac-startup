cd ~
curl -O https://raw.githubusercontent.com/nicolashery/mac-dev-setup/master/.gitconfig
curl -O https://raw.githubusercontent.com/nicolashery/mac-dev-setup/master/.gitignore
git config --global core.excludesfile ~/.gitignore

ssh-keygen -t rsa
xcode-select --install
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
eval "$(/opt/homebrew/bin/brew shellenv)"

brew doctor

brew install openjdk@11 jenv postgresql docker speedtest-cli youtube-dl archey4 awscli fortune openssl readline sqlite3 xz zlib pyenv pyenv-virtualenv bash-completion
pip install awscli-local

brew services start postgresql@14
sudo ln -sfn /opt/homebrew/opt/openjdk@11/libexec/openjdk.jdk /Library/Java/JavaVirtualMachines/openjdk-11.jdk
jenv add /Library/Java/JavaVirtualMachines/openjdk-11.jdk/Contents/Home/

curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.5/install.sh | bash