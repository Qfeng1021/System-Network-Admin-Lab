import os, sys, time
base = '/home/qianyi/ltest/'
i = 1
while 1:
    file_name = base + str(i)
    os.mkdir(file_name)
    i = i + 1
    time.sleep(60)

