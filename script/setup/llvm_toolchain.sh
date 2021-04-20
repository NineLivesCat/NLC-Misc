sudo apt update

## LLVM
sudo apt install \
    libllvm-10-ocaml-dev \
    libllvm10 \
    llvm-10 \
    llvm-10-dev \
    llvm-10-runtime \
    llvm-10-tools -y

## Clang and co
sudo apt install \
    clang-10 \
    clang-format-10 \
    clang-tidy-10 \
    clang-tools-10 \
    libclang-common-10-dev \
    libclang-10-dev \
    libclang1-10 \
    clangd-10 -y
    # python-clang-10

# lldb
sudo apt install lldb-10 -y
# lld (linker)
sudo apt install lld-10 -y
# libc++
sudo apt install libc++-10-dev libc++abi-10-dev -y
# OpenMP
# apt-get install libomp-10-dev
# libfuzzer
# apt-get install libfuzzer-10-dev

sudo apt install \
    python3 \
    python3-pip -y

sudo -H pip3 install compiledb -y

# gcc-arm-none-eabi
sudo apt install \
    gcc-arm-none-eabi \
    binutils-arm-none-eabi \
    openocd -y

#### latest version
# bash -c "$(wget -O - https://apt.llvm.org/llvm.sh)"

# To install a specific version of LLVM:
# wget https://apt.llvm.org/llvm.sh
# chmod +x llvm.sh
# sudo ./llvm.sh <version number>