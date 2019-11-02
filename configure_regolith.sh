if ! [ -f ~/.config/regolith/i3/config ]
then
# initialize i3 config
echo 'creating i3 config...'
mkdir -p ~/.config/regolith/i3
I3CONFIG=~/.config/regolith/i3/config
cp /etc/regolith/i3/config $I3CONFIG

sed -i 's/\/usr\/bin\/st/\/usr\/bin\/gnome-terminal/g' $I3CONFIG
sed -i 's/bar {/bar {\n  mode hide/g' $I3CONFIG
# theming
echo 'performing regolith theming...'
cp -n /etc/regolith/styles/root ~/.Xresources-regolith
fi