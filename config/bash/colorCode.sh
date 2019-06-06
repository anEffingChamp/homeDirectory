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
    # TODO How can I better use color?
    # https://unix.stackexchange.com/questions/124407/what-color-codes-can-i-use-in-my-ps1-prompt
    case $string in
        [ab1AB]) color='0;31';;
        #[ab1AB]) color="$RED";;
        [cd2CD]) color='0;33';;
        #[cd2CD]) color="$GREEN";;
        [ef3EF]) color='0;34';;
        #[ef3EF]) color="$BLUE";;
        [gh4GH]) color='0;35';;
        #[gh4GH]) color="$PURPLE";;
        [ij5IJ]) color='0;36';;
        #[ij5IJ]) color="$CYAN";;
        [kl6KL]) color='0;37';;
        #[kl6KL]) color="$BOLD";;
        [mn7MN]) color='1;30';;
        #[mn7MN]) color="$BOLD_GRAY";;
        [op8OP]) color='1;31';;
        #[op8OP]) color="$BOLD_RED";;
        [qr9QR]) color='1;32';;
        #[qr9QR]) color="$BOLD_GREEN";;
        [st0ST]) color='1;33';;
        #[st0ST]) color="$YELLOW";;
        [uv~EV]) color='1;34';;
        #[uv~EV]) color="$BOLD_BLUE";;
        [wxWX]) color='1;35';;
        #[wxWX]) color="$PINK";;
        [yzYZ]) color='1;36';;
        #[yzYZ]) color="$BOLD_CYAN";;
    esac
    echo "\\033[${color}m"
}
