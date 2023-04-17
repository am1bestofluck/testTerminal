#/usr bin bash
echo  'https://tecadmin.net/how-to-install-apache-with-php-fpm-on-ubuntu-22-04/'
pack1='nginx'
pack2='ppa:ondrej/php'
pack3='php8.2'
pack4='php8.2-fpm'

apt update -y
apt upgrade -y
apt install -y $pack1
apt update -y

apt install software-properties-common -y
add-apt-repository $pack2 -y
apt install $pack3 $pack4  -y
apt update -y

echo 'startup'
systemctl start php8.2-fpm
systemctl enable php8.2-fpm

#echo 'cleanup'
#cleanup=("$pack1" "$pack2" "$pack3" "$pack4")
#for del in ${!cleanup[@]};
#do
#  echo "removing $del"
#  apt remove $del
#done
