# initialize i3 config
echo 'creating i3 config...'
mkdir -p ~/.config/regolith/i3
cp /etc/regolith/i3/config ~/.config/regolith/i3/config

sed -i 's/\/usr\/bin\/st/\/usr\/bin\/gnome-terminal/g' ~/.config/regolith/i3/config

# theming
echo 'performing reglolith theming...'
cp -n /etc/regolith/styles/root ~/.Xresources-regolith
