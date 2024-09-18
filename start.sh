set -e

art='
_________ .__          .__       /\       ________                ___________            
\_   ___ \|  |_________|__| _____)/______ \______ \   _______  __ \_   _____/ _______  __
/    \  \/|  |  \_  __ \  |/  ___//  ___/  |    |  \_/ __ \  \/ /  |    __)_ /    \  \/ /
\     \___|   Y  \  | \/  |\___ \ \___ \   |    `   \  ___/\   /   |        \   |  \   / 
 \______  /___|  /__|  |__/____  >____  > /_______  /\___  >\_/   /_______  /___|  /\_/  
        \/     \/              \/     \/          \/     \/               \/     \/      


'

# Define the color gradient (shades of cyan and blue)
colors=(
    '\033[38;5;81m' # Cyan
    '\033[38;5;75m' # Light Blue
    '\033[38;5;69m' # Sky Blue
    '\033[38;5;63m' # Dodger Blue
    '\033[38;5;57m' # Deep Sky Blue
    '\033[38;5;51m' # Cornflower Blue
    '\033[38;5;45m' # Royal Blue
)

# Split the ASCII art into lines
IFS=$'\n' read -rd '' -a lines <<<"$ascii_art"

# Print each line with the corresponding color
for i in "${!lines[@]}"; do
    color_index=$((i % ${#colors[@]}))
    echo -e "${colors[color_index]}${lines[i]}"
done

echo -e "\n Beginning Omakub Postinstall..."
echo -e "\nCloning Omakub-Postinstall from Github"
rm -rf ~/.local/share/omakub-postinstall
git clone https://github.com/chrscchrn/Omakub-Postinstall.git ~/.local/share/omakub-postinstall >/dev/null

source ~/.local/share/omakub-postinall/postinstall.sh
