mkdir -p ~/Punto_F
IP=$(curl -s ifconfig.me)
MODELO=$(grep "model name" /proc/cpuinfo | head -n1 | awk -F ':' '{print $2}')
FRECUENCIA=$(grep "cpu MHz" /proc/cpuinfo | head -n1 | awk -F ':' '{print $2}')
echo "Mi ip publica es: $IP" > ~/Punto_F/Filtro_Avanzado.txt
echo "CPU Modelo:$MODELO Frecuencia:$FRECUENCIA" >> ~/Punto_F/Filtro_Avanzado.txt
