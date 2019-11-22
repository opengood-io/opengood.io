#!/usr/bin/env bash

bash_profile=~/.bash_profile

echo -e "Downloading Ruby..." 1>&2
/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
echo -e "Done!" 1>&2

echo -e "Installing Ruby via Homebrew..." 1>&2
brew install ruby
echo -e "Done!" 1>&2

echo -e "Exporting Ruby path to PATH env var..." 1>&2
export PATH=/usr/local/opt/ruby/bin:$PATH
echo -e "Done!" 1>&2

echo -e "Storing Ruby path to PATH env var in Bash profile and resourcing it..." 1>&2
cat <<EOF >>"${bash_profile}"
# export Ruby directories in PATH env variable
export PATH=/usr/local/opt/ruby/bin:\$PATH
EOF
source "${bash_profile}"
echo -e "Done!" 1>&2

echo -e "Outputting Ruby installation and version..." 1>&2
command -v ruby
ruby -v
echo -e "Done!" 1>&2

echo -e "Installing Jekyll..." 1>&2
gem install --user-install bundler jekyll
echo -e "Done!" 1>&2

echo -e "Getting version of Ruby..." 1>&2
ruby_version=$(ruby -v | perl -pe '($_)=/([0-9]+([.][0-9]+))/')
echo -e "Done!" 1>&2

echo -e "Exporting Ruby path to PATH env var..." 1>&2
export PATH=$HOME/.gem/ruby/${ruby_version}.0/bin:$PATH
echo -e "Done!" 1>&2

echo -e "Storing Ruby Gem path to PATH env var in Bash profile and resourcing it..." 1>&2
cat <<EOF >>"${bash_profile}"
export PATH=\$HOME/.gem/ruby/${ruby_version}.0/bin:\$PATH

EOF
source "${bash_profile}"
echo -e "Done!" 1>&2

echo -e "Outputting Ruby Gem paths..." 1>&2
gem env
echo -e "Done!" 1>&2
