ssh-keygen -t rsa
xcode-select --install
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
eval "$(/opt/homebrew/bin/brew shellenv)"

brew install openjdk@11 jenv postgresql docker speedtest-cli youtube-dl archey4 awscli fortune
pip install awscli-local

brew services start postgresql@14
sudo ln -sfn /opt/homebrew/opt/openjdk@11/libexec/openjdk.jdk /Library/Java/JavaVirtualMachines/openjdk-11.jdk
jenv add /Library/Java/JavaVirtualMachines/openjdk-11.jdk/Contents/Home/
