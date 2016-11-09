sudo apt-get install vim gparted guake git virtualenvwrapper

### FOR STEAM
sudo add-apt-repository multiverse
sudp apt-get install steam
####

### For the best browser available
wget -q -O - https://dl-ssl.google.com/linux/linux_signing_key.pub | sudo apt-key add -
sudo sh -c 'echo "deb [arch=amd64] http://dl.google.com/linux/chrome/deb/ stable main" >> /etc/apt/sources.list.d/google-chrome.list'
sudo apt-get update
sudo apt-get install google-chrome-stable
####

### git setup
ssh-keygen

echo "Add the following public key to github if not already"
echo ~/.ssh/id_rsa.pub
read -p "Enter when done with the ssh" enter

cd
mkdir code
cd code

git clone git@github.com:Bug-E/config.git
cat config/.bash_profile >> ~/.bashrc
cp config/.vimrc ~/.vimrc
cp config/.gitconfig ~/.gitconfig
cp config/.gitignore ~/.gitignore
####

### dart setup
read -p "Do you want to install Dart language? y/n" response
if [[ $response =~ ^([yY][eE][sS]|[yY])$ ]]
then
	sudo apt-get install apt-transport-https
	# Get the Google Linux package signing key.
	sudo sh -c 'curl https://dl-ssl.google.com/linux/linux_signing_key.pub | apt-key add -'
	# Set up the location of the stable repository.
	sudo sh -c 'curl https://storage.googleapis.com/download.dartlang.org/linux/debian/dart_stable.list > /etc/apt/sources.list.d/dart_stable.list'
	sudo apt-get update
	sudo apt-get install dart
fi
####
