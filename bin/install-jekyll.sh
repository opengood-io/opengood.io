#!/usr/bin/env bash

bash_profile=~/.bash_profile

function write_message() {
    local msg="$1"
    echo -e "${msg}" 1>&2
}

write_message "Downloading Ruby..."
/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
write_message "Done!"

write_message "Installing Ruby via Homebrew..."
brew install ruby
write_message "Done!"

write_message "Exporting Ruby path to PATH env var..."
export PATH=/usr/local/opt/ruby/bin:$PATH
write_message "Done!"

write_message "Storing Ruby path to PATH env var in Bash profile and resourcing it..."
cat <<EOF >>"${bash_profile}"
# export Ruby directories in PATH env variable
export PATH=/usr/local/opt/ruby/bin:\$PATH
EOF
source "${bash_profile}"
write_message "Done!"

write_message "Outputting Ruby installation and version..."
command -v ruby
ruby -v
write_message "Done!"

write_message "Installing Jekyll..."
gem install --user-install bundler jekyll
write_message "Done!"

write_message "Getting version of Ruby..."
ruby_version=$(ruby -v | perl -pe '($_)=/([0-9]+([.][0-9]+))/')
write_message "Done!"

write_message "Exporting Ruby path to PATH env var..."
export PATH=$HOME/.gem/ruby/${ruby_version}.0/bin:$PATH
write_message "Done!"

write_message "Storing Ruby Gem path to PATH env var in Bash profile and resourcing it..."
cat <<EOF >>"${bash_profile}"
export PATH=\$HOME/.gem/ruby/${ruby_version}.0/bin:\$PATH

EOF
source "${bash_profile}"
write_message "Done!"

write_message "Outputting Ruby Gem paths..."
gem env
write_message "Done!"
