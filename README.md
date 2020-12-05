# install
<b><br>OpenSSH : 22
<br>Dropbear : 143, 443, 456, 999
<br>SSL : 443
<br>Squid3 : 8000, 8080 (limit to IP SSH)
<br>SSL: http://myip:81/ssl.conf
<br>OpenVPNSSL: http://myip:81/openvpnssl.ovpn
<br>OpenVPN : TCP 1194 ,1195(client config : http://myip:81/client.ovpn)
<br>badvpn : badvpn-udpgw port 7200

Auto-Installer

apt-get update && apt-get upgrade -y && wget https://raw.githubusercontent.com/acillsadang/install/master/install.sh && chmod +x install.sh && ./install.sh
