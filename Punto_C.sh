sudo groupadd p1c1_2026_Todos
sudo useradd -m -g p1c1_2026_Todos -s /bin/bash p1c1_2026_u2
echo "p1c1_2026_u2:clave1" | sudo chpasswd
sudo usermod -aG p1c1_2026_Todos p1c1_2026_u1
sudo chown -R p1c1_2026_u1:p1c1_2026_Todos /datos/
sudo chmod -R 770 /datos/
sudo chmod o+rx /datos/
su -c "id >> /datos/validar1.txt" p1c1_2026_u2
