#!/bin/bash

# Sistem güncelleniyor
echo "[+] Sistem güncelleniyor..."
sudo apt update -y

# Docker kuruluyor
echo "[+] Docker kuruluyor..."
sudo apt install -y docker docker.io

# MobSF imajı indiriliyor
echo "[+] MobSF docker imajı indiriliyor..."
sudo docker pull opensecurity/mobile-security-framework-mobsf

# ozibebemobsf adında global komut oluşturuluyor
echo "[+] ozibebemobsf komutu oluşturuluyor..."
echo '#!/bin/bash
docker run -it --rm -p 8000:8000 opensecurity/mobile-security-framework-mobsf:latest' | sudo tee /usr/local/bin/ozibebemobsf > /dev/null

# Çalıştırılabilir hale getiriliyor
sudo chmod +x /usr/local/bin/ozibebemobsf

echo "[✓] Kurulum tamamlandı! Artık terminale 'ozibebemobsf' yazman yeterli."

