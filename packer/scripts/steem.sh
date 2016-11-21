# Required packages
sudo apt-get install -y \
    autoconf \
    automake \
    cmake \
    g++ \
    git \
    libssl-dev \
    libtool \
    make

# Boost packages (also required)
sudo apt-get install -y \
    libboost-chrono-dev \
    libboost-context-dev \
    libboost-coroutine-dev \
    libboost-date-time-dev \
    libboost-filesystem-dev \
    libboost-iostreams-dev \
    libboost-locale-dev \
    libboost-program-options-dev \
    libboost-serialization-dev \
    libboost-signals-dev \
    libboost-system-dev \
    libboost-test-dev \
    libboost-thread-dev

# Optional packages (not required, but will make a nicer experience)
sudo apt-get install -y \
    doxygen \
    libncurses5-dev \
    libreadline-dev \
    perl

git clone https://github.com/steemit/steem
cd steem
git submodule update --init --recursive
mkdir build
cd build
cmake -DCMAKE_BUILD_TYPE=Release ..
make -j$(nproc) steemd
make -j$(nproc) cli_wallet
# optional
make install  # defaults to /usr/local