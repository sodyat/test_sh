#!/bin/bash 

#local-vars: script, representing local and global variables



foo=0

funct_1 () {
local foo  #local variable foo, local for funct_1 

foo=1 
echo "funct_1: foo = $foo"

}


funct_2 () {
local foo #variablles foo, local for funct_2

foo=2 

echo "funct_2: foo: $foo"
}


echo "global: foo = $foo"
funct_1 
echo "global: foo = $foo"
funct_2
echo "global: foo = $foo"



