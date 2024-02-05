wait 2sec

echo "Updating system..."

wait 1sec

apt-get update -y

wait 2sec

echo "Upgrading system..."

wait 1sec

apt-get upgrade -y

wait 2sec

echo "Installing Docker..."

wait 1sec

apt-get install docker -y

wait 2sec

cd ..

wait 2sec

mkdir Docker

wait 2 sec

docker run \
  -p 8080:8080 \
  -v </path/to/config>:/config \
  jwetzell/guacamole

wait 1sec

echo "Done, your Apache Guacamole instance is ready!"