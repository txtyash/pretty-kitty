# Check if option is present in config
if egrep -qwi 'font_family' "./all.md" && egrep -qwi 'font_size' "./all.md"; then
    echo -n;
else 
    printf '%s\n' "    ${BLUE}[${RED}*${BLUE}] ${RED}Adding font options to kitty config..."
    printf "font_family" >> "${KITTY_DIR}/kitty.conf"
    printf "font_size" >> "${KITTY_DIR}/kitty.conf"
    sleep 1; 
fi

