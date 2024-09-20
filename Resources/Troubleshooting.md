```markdown
# Troubleshooting Nextcloud

Berikut beberapa langkah pemecahan masalah umum:

## 1. Kesalahan Koneksi Database
- Pastikan MySQL berjalan:
  ```bash
  sudo systemctl status mysql
## 2. Masalah Izin
- Pastikan direktori Nextcloud memiliki izin yang benar:
```bash
sudo chown -R www-data:www-data /var/www/html/nextcloud
## 3. Kesalahan Apache
- Periksa log error Apache:
```bash
cat /var/log/apache2/nextcloud_error.log

