#!/bin/sh
ln -s symtest1 .
ln -s symtest2 .
ln -s symtest3 .
ln -s symtest4 .
while [ 1 ];
do {
cat symtest1;
cat symtest2;
cat symtest3;
cat symtest4;
sleep 60;}
done;
