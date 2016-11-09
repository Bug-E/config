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
