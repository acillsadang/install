#!/bin/bash
#Script auto create trial user SSH
#will expired after 1 day
#modified by Rizwan Arif Firmansyah

IP=`dig +short myip.opendns.com @resolver1.opendns.com`

Login=trial`</dev/urandom tr -dc X-Z0-9 | head -c4`
hari="1"
Pass=`</dev/urandom tr -dc a-f0-9 | head -c9`

useradd -e `date -d "$hari days" +"%Y-%m-%d"` -s /bin/false -M $Login
echo -e "$Pass\n$Pass\n"|passwd $Login &> /dev/null
echo -e ""
echo -e "====SSH Account Information====" 
echo -e "Host: $IP" 
echo -e "Username: $Login "
echo -e "Password: $Pass" 
echo -e "Port OpenSSH: 22"  
echo -e "Port Dropbear: 143, 456, 999"  
echo -e "Port SSL: 443" 
echo -e "Port OpenVPNSSL: 990" 
echo -e "Port Squid: 80,8080 (limit to IP SSH)" 
echo -e "Config SSL: http://$IP:81/ssl.conf" 
echo -e "Config OpenVPNSSL: http://$IP:81/openvpnssl.ovpn" | 
echo -e "Config OpenVPN (TCP 1194): http://$IP:81/client.ovpn" 
echo -e "badvpn: badvpn-udpgw port 7200" 
echo -e "=============================" 
echo -e "Expiration: $exp" 
echo -e "=============================" 
echo -e "Mod by Rizwan Arif Firmansyah" 
echo -e ""
