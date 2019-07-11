# You may wonder why I go through all of this trouble. If you manage multiple
# servers then you can never have enough cues to visually distinguish them.
# Color that prompt, baby. The first letter determines the color to give another
# indication.
function colorCode {
    string=$1
    # Cut out parentheses if this is a git branch.
    string=${string##*(}
    if [ "$1" == "$(date +%M)" ]; then
        # I just want to change the color every ten minutes rather than every
        # minute.
        string=${string:0:1}
    fi
    if [ "$1" == "$(\ifconfig -a)" ]; then
        # Internal IP addresses will look very similar except for the last
        # octet, so that is what we need to parse.
        string=${string: -1}
    fi
    string=${string:0:1}
    color=$((`printf '%d' "'${string}"` - 33))
    # At this point $color is actually a number, so lets give it some range in
    # the available 256 palette. The meaningful ASCII characters are in
    # [33,126], so lets increment in a meaningful way. We already subtracted 33
    # to align with the bottom of our range, so now we can multiply such that
    # our highest value aligns with the top of the range.
    color=$(($color * 255 / 126))
    echo "\\033[38;5;${color}m"
}
