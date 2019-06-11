
#!/bin/sh
while [ 1 ];
do
ssh -t osboxes@testium.cs.uoregon.edu -p 10092 sh /home/osboxes/mon1.sh >> ~/public_html/snail-wk5.html;
sleep 60;

done
