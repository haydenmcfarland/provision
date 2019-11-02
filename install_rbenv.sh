sudo chown -R $USER ~/.rbenv

git clone https://github.com/rbenv/rbenv.git ~/.rbenv
echo 'export PATH="$HOME/.rbenv/bin:$PATH"' >> ~/.bashrc
echo 'eval "$(rbenv init -)"' >> ~/.bashrc

git clone https://github.com/rbenv/ruby-build.git ~/.rbenv/plugins/ruby-build
apt-get install autoconf bison build-essential libssl-dev libyaml-dev libreadline6-dev zlib1g-dev libncurses5-dev
git clone https://github.com/tpope/rbenv-aliases.git ~/.rbenv/plugins/rbenv-aliases
rbenv alias --auto

git clone https://github.com/rbenv/rbenv-default-gems.git ~/.rbenv/plugins/rbenv-default-gems
rbenv install 2.6.3