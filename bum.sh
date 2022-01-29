KITTY_DIR="$HOME/.config/kitty"
WALL_DIR='/home/zim/github/pretty-kitty/wallpapers'
wallpaper=$(find $WALL_DIR -type f -name "*.jpg" | shuf -n 1)
sed -i -e "s|background_image.*|background_image $wallpaper|g" $KITTY_DIR/kitty.conf
echo "    ${BLUE}[${RED}*${BLUE}] ${ORANGE}Wallpaper Set To: ${wallpaper##*/}"
