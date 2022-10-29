# use UTF-8 everywhere
export LANG=en_US.UTF-8

# specify location of kshrc
export ENV=$HOME/.zshrc

# load Xresources
xrdb -merge $HOME/.Xresources

# set your background colour
xsetroot -solid dimgray

#xidle will lock you display after period of inactivity
xidel &

# xclock bug?
LANG= xclock -strftime "%a %e %b %Y %H:%M" &

# disable system beep
xset b off

#start cwm
exec cwm

