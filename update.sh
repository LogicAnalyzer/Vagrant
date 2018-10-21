#! /usr/bin/env sh 
echo "Installing stuff"
apt-get update -y
apt-get install -y apt-utils git vim dirmngr gnupg gnupg-agent software-properties-common python3 autoconf gperf bison flex gcc g++ make colormake swig python-dev cmake subversion iverilog python3-pip python-pip

# Sigrok libserialport
apt-get install -y sigrok git-core gcc make autoconf automake libtool

# Sigrok libsigrok
apt-get install -y git-core gcc g++ make autoconf autoconf-archive \
  automake libtool pkg-config libglib2.0-dev libglibmm-2.4-dev libzip-dev \
  libusb-1.0-0-dev libftdi1-dev check doxygen python-numpy \
  python-dev python-gi-dev python-setuptools swig default-jdk

# Sigrok libsigrokdecode
apt-get install -y git-core gcc make autoconf automake libtool pkg-config libglib2.0-dev python3-dev

# Sigrok sigrok-cli
apt-get install -y git-core gcc make autoconf automake libtool pkg-config libglib2.0-dev

# Sigrok PulseView
apt-get install -y git-core g++ make cmake libtool pkg-config \
  libglib2.0-dev libboost-test-dev libboost-serialization-dev \
  libboost-filesystem-dev libboost-system-dev libqt5svg5-dev qtbase5-dev

