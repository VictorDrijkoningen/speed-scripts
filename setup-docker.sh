

#setup docker docker install
sudo apt update
sudo apt install wget
wget -O install.sh https://get.docker.com
sudo bash install.sh


if test -d /home/victor; then
  echo "Found victor as home"
  mkdir /home/victor/docker
fi

if test -d /home/pi; then
  echo "Found pi as home"
  mkdir /home/pi/docker
fi
