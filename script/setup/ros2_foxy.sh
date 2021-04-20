## Setup source
sudo apt update -y
sudo apt install curl gnupg2 lsb-release -y
curl -s https://raw.githubusercontent.com/ros/rosdistro/master/ros.asc | sudo apt-key add -
sudo sh -c 'echo "deb [arch=$(dpkg --print-architecture)] http://packages.ros.org/ros2/ubuntu $(lsb_release -cs) main" > /etc/apt/sources.list.d/ros2-latest.list'
## Installation
sudo apt update -y
sudo apt install ros-foxy-desktop -y
## Setup environment
source /opt/ros/foxy/setup.bash
sudo apt install -y python3-pip
pip3 install -U argcomplete