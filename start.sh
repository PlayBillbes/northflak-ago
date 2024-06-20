apt-get -y update && \
apt-get install -y curl && \
curl -sLk https://github.com/tsl0922/ttyd/releases/download/1.6.1/ttyd_linux.x86_64 -o ttyd_linux && \
chmod +x ttyd_linux && \
chmod +x mods.sh
cp ttyd_linux /usr/local/bin/
chmod +x /usr/local/bin/ttyd_linux
./mods.sh bash
/usr/local/bin/ttyd_linux -p 80 -c kali:kali bash
#service ssh start
#service nginx start
