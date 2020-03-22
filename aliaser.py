#!/usr/bin/python3
import os


debug = False
print("alias- ",end = '')
aliasName = str(input())

print("command- ",end='')
cmd = str(input())

file=open(os.path.expanduser("~/.aliases"),"a")

if(debug == False):
    file=open(os.path.expanduser("~/.aliases"),"a")
else:
    file=open(os.path.expanduser("~/temp/.aliases"),"a")    

alias = "\n" + "alias " + aliasName + "='" + str(cmd) + "'"

file.write(alias)



