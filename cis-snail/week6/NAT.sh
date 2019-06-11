sudo sysctl -w net.ipv4.ip_forward=1

sudo iptables -X

sudo iptables -F

sudo iptables -t nat -X

sudo iptables -t nat -F

sudo iptables -A INPUT -j LOG --log-prefix "iptables"

sudo iptables -I INPUT -m state --state RELATED,ESTABLISHED -j ACCEPT

sudo iptables -I FORWARD -m state --state RELATED,ESTABLISHED -j ACCEPT

sudo iptables -t nat -A POSTROUTING -o enp0s3 -j MASQUERADE

sudo iptables -L -n
