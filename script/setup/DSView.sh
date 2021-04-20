## Install Requirements
sudo apt install \
    git-core \
    build-essential \
    cmake \
    autoconf \
    automake \
    libtool \
    pkg-config \
    libglib2.0-dev \
    libzip-dev \
    libudev-dev \
    libusb-1.0-0-dev \
    python3-dev \
    qt5-default \
    libboost-dev \
    libboost-test-dev \
    libboost-thread-dev \
    libboost-system-dev \
    libboost-filesystem-dev \
    check \
    libfftw3-dev -y

## Get Source Code
cd ~
git clone git://github.com/DreamSourceLab/DSView
cd DSView
cd libsigrok4DSL
./autogen.sh
./configure
sudo make install
cd ..
cd libsigrokdecode4DSL
./autogen.sh
./configure
sudo make install
cd ..
cd DSView
cmake .

## If this step fails, 
## make sure that your pkg-config is properly configured 
## to find the libsigrok and libsigrokdecode libraries 
## (It's not by default in Fedora 23). 
## To do this add "export PKG_CONFIG_PATH="/usr/local/lib/pkgconfig" 
## to your ~/.bashrc and reload it `. ~/.bashrc`.

sudo make install