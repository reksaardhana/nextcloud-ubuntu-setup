#!/bin/bash

# Memperbarui sistem
sudo apt update && sudo apt upgrade -y

# Menginstal paket yang diperlukan
sudo apt install -y apache2 mysql-server php libapache2-mod-php php-mysql php-xml php-mbstring php-curl php-zip

# Mengunduh Nextcloud
wget https://download.nextcloud.com/server/releases/nextcloud-XX.X.X.zip
unzip nextcloud-XX.X.X.zip
sudo mv nextcloud /var/www/html/

# Mengatur hak akses
sudo chown -R www-data:www-data /var/www/html/nextcloud
sudo chmod -R 755 /var/www/html/nextcloud

# Mengkonfigurasi database
sudo mysql < mysql_setup.sql

# Mengkonfigurasi Apache
sudo cp /var/www/html/nextcloud/nextcloud.conf /etc/apache2/sites-available/
sudo a2ensite nextcloud
sudo systemctl reload apache2

echo "Instalasi Nextcloud selesai. Akses melalui http://your_server_ip/nextcloud"
