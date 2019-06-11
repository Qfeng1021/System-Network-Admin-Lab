#!/bin/sh
while [ 1 ];
echo "......Updating......<br>";
do {    date;
echo "<br>";
uptime;
echo "<br>";
ps h -Led -o user | sort | uniq -c | sort -n | awk '$1 >= 50 {print}';
echo "<br>";
echo  "........message ending........";
echo "<br>";
echo "<p>";
sleep 60;}
done;

