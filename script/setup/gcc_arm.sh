read -p "Download package from https://developer.arm.com/tools-and-software/open-source-software/developer-tools/gnu-toolchain/gnu-rm/downloads "
sudo tar -xjf gcc-arm-none-eabi-10-2020-q4-major-x86_64-linux.tar.bz2
sudo mv gcc-arm-none-eabi-10-2020-q4-major gcc-arm-none-eabi
sudo cp -r ./gcc-arm-none-eabi ~
sudo rm -rf ./gcc-arm-none-eabi
sudo rm -rf gcc-arm-none-eabi-10-2020-q4-major-x86_64-linux.tar.bz2
sudo echo export PATH=\$PATH:~/gcc-arm-none-eabi/bin >> ~/.bashrc
source ~/.bashrc