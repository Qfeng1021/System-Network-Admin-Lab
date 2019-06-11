;
; BIND reverse data file for local loopback interface
;
$TTL	604800
@	IN	SOA	testunusual.com. root.testunusual.com. (
			      1		; Serial
			 604800		; Refresh
			  86400		; Retry
			2419200		; Expire
			 604800 )	; Negative Cache TTL
;Your Name Server Info
@	IN      NS      primary.testunusual.com.
primary.testunusual.com. IN	A	192.168.73.10

;Reverse Lookup For Your DNS Server
10	IN	PTR	primary.testunusual.com.

;PTR Record IP address to HostName
35	IN	PTR	www.testunusual.com.
40	IN	PTR	mail.testunusual.com.
