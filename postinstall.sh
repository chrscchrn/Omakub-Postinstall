set -e

echo ". . . My Omakub Post-Install . . ."

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
