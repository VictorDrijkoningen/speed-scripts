

sudo docker run -d -p 9000:9000 --name portainer \
  --memory='1g' \
  --cpus 0.4 \
  --restart=always \
  -v /var/run/docker.sock:/var/run/docker.sock \
  -v /home/pi/docker/portainer/data:/data \
  portainer/portainer-ce:latest



