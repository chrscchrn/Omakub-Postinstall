set -e

gsettings set org.gnome.desktop.screensaver lock-enabled false
gsettings set org.gnome.desktop.session idle-delay 0

for installer in ~/.local/share/omakub-postinstall/install/terminal/*.sh; do source $installer; done
for installer in ~/.local/share/omakub-postinstall/install/desktop/*.sh; do source $installer; done

gsettings set org.gnome.desktop.screensaver lock-enabled true
gsettings set org.gnome.desktop.session idle-delay 300

# forget ab it

# brew
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
echo 'export XDG_DATA_DIRS="/home/linuxbrew/.linuxbrew/share:$XDG_DATA_DIRS"' >>~/.profile
## need fresh install for the others

# dotnet-sdk-8
sudo apt-get update && sudo apt-get install -y dotnet-sdk-8.0

# Monogame Wine effect completion and Templates
sudo apt install wget curl p7zip-full wine64
wget -qO- https://monogame.net/downloads/net8_mgfxc_wine_setup.sh | bash
dotnet new install MonoGame.Templates.CSharp
