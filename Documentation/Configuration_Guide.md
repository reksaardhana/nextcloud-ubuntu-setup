# Panduan Konfigurasi Nextcloud

Setelah instalasi, Anda perlu mengonfigurasi beberapa pengaturan.

## Konfigurasi Apache
Pastikan file `nextcloud.conf` telah disalin ke `/etc/apache2/sites-available/` dan diaktifkan.

```bash
sudo a2ensite nextcloud
sudo systemctl reload apache2
```
# Mengakses Nextcloud
```arduino
http://your_server_ip/nextcloud
```
Ikuti langkah-langkah di antarmuka web untuk menyelesaikan konfigurasi.
