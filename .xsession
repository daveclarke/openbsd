# use UTF-8 everywhere
export LANG=en_US.UTF-8

# specify location of kshrc
export ENV=$HOME/.kshrc

# load Xresources file
xrdb -merge $HOME/.Xresources

# set your background color
xsetroot -solid dimgray

# xidle will lock your display after a period of inactivity
xidle &

# sadly, xclock has a bug where the font selection is ignored when UTF-8
# is enabled, so we unset LANG here.
LANG= xclock -strftime "%a %e %b %Y %H:%M" &

# disable system beep
xset b off

# start cwm!
xterm -geometry 96x50+1+1 &
xterm -geometry 96x50+684+1 &
exec cwm
