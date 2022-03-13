#!/bin/bash -xve
apt-get -qq update && apt-get -qq install -y python
apt-get -qq update
apt-get -qq install -y python python-virtualenv python-pip
virtualenv venv
. venv/bin/activate
python -V
pip install catkin_pkg
pip install empy
pip install pyyaml
pip install rospkg
