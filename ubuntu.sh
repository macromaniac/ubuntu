#!/bin/bash

echo "for ubuntu 12"

#update
apt update
apt -y upgrade

#install bro pages
apt-add-repository ppa:brightbox/ruby-ng
apt update
apt -y install ruby2.2 ruby2.2-dev
gem -y install bropages


#install python
apt -y install python-dev python-pip
apt -y install ipython

#install python packages for ml
#scipi
apt -y install numpy python-numpy python-scipy python-matplotlib ipython ipython-notebook python-pandas python-sympy python-nose
apt -y install pkg-config
apt -y install libpng-dev libjpeg8-dev libfreetype6-dev
pip -y install matplotlib
pip -y install scikit-learn

#we use cpu tf atm, from https://www.tensorflow.org/versions/r0.10/get_started/os_setup.html
export TF_BINARY_URL=https://storage.googleapis.com/tensorflow/linux/cpu/tensorflow-0.10.0rc0-cp27-none-linux_x86_64.whl
sudo pip install --upgrade $TF_BINARY_URL

#install gym
pip install gym


