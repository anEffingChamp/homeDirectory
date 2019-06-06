# You may wonder why I go through all of this trouble. If you manage multiple
# servers then you can never have enough cues to visually distinguish them.
# Color that prompt, baby. The first letter determines the color to give another
# indication.
function colorCode {
    string=$1
    # Cut out parentheses if this is a git branch.
    string=${string##*(}
    # TODO What am I doing here for time stamps? Just the time stamp should be
    # enough.
    if [ "$1" == "$(date +%M)" ]; then
        # I just want to change the color every ten minutes rather than every
        # minute.
        string=${string:0:1}
    fi
    string=${string:0:1}
    color=$((`printf '%d' "'${string}"` - 28))
    # At this point $color is actually a number, so lets give it some range in
    # the available 256 palette. The meaningful ASCII characters are in
    # [48,127], so lets increment in a meaningful way.
    color=$(($color * 255 / (127 - 48)))
    echo "\\033[38;5;${color}m"
}
