#!/bin/sh
echo "Updating ARP tables..."
fping -a -g 192.168.73.0/24 > /dev/null 2>&1
default=""
gateway=""
while [ 1 ]
do
    echo "Detecting..."
    ping 192.168.73.1 -b -w 1 > /dev/null 2>&1
    ip neighbor > log
    cat ./log | while read line
    do
        gateway=$(echo $line | grep 'enp0s8 [^F]')

        if [ "$gateway" != "" ]
        then
            i=$(echo `expr index "$gateway" r`)
            i1=`expr $i + 1`
            gateway=${gateway:$i1:18}
            count=$(grep -e $gateway -c ./log)
            if [ "$count" \> 1 ]
            then
                echo "Warning! ARP poisoning."
                date >> detect_log
                echo $gateway >> detect_log
                echo "" >> detect_log
                default=$gateway
                break
            fi
        fi
    done
    sleep 70
done

