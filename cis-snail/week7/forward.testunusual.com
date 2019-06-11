;
; BIND data file for local loopback interface
;
$TTL	604800
@	IN	SOA	primary.testunusual.com. root.primary.testunusual.com. (
			      2		; Serial
			 604800		; Refresh
			  86400		; Retry
			2419200		; Expire
			 604800 )	; Negative Cache TTL
;Name Server Information
@	IN	NS	primary.testunusual.com.

;IP address of Your Domain Name Server(DNS)

primary.testunusual.com.	IN	A	192.168.73.10

;Mail Server MX (Mail exchanger) Record

testunusual.com.	IN	MX	10	mail.testunusual.com.

;A Record for Host names

www	IN	A	192.168.73.35
mail	IN	A	192.168.73.40

;CNAME Record
ftp	IN	CNAME	192.168.73.42

