#!/bin/bash
## to build sde2 assignment
bison -d prolog1.y
flex prolog1.in
gcc prolog1.c -Wall -ll -g -o prolog1
