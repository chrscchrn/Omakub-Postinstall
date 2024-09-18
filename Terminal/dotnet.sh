# dotnet-sdk-8
sudo apt-get update && sudo apt-get install -y dotnet-sdk-8.0

# if you don't yet have a .config/dotnet-tools.json file
dotnet new tool-manifest
dotnet tool install -g csharpier
