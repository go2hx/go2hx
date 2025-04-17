#sudo apt-get update
sudo apt-get install libpng-dev libturbojpeg-dev libvorbis-dev libopenal-dev libsdl2-dev libmbedtls-dev libuv1-dev
sudo git clone https://github.com/HaxeFoundation/hashlink
cd hashlink
sudo make
sudo make all
sudo make install
sudo ldconfig