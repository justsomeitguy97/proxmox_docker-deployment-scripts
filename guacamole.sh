echo "Updating system..."
apt-get update -y
echo "Upgrading system..."
apt-get upgrade -y
echo "Installing Docker..."
apt-get install docker -y
cd ..
mkdir docker/apache-guacamole/config
docker run \
  -p 8080:8080 \
  -v docker/apache-guacamole/config:/config \
  jwetzell/guacamole
echo "Done, your Apache Guacamole instance is ready!"
