#!/bin/bash

#for i in 1024 2048 4096 8192 16384; do
for i in 1024 2048 4096; do
	FILE=${i}N_dados
	echo -n "" > $FILE
	for j in 2 4 8 16 32 64 128 256 512 1024; do
		echo -n "${j} ">> $FILE
		echo $(grep "misprediction rate" ${i}N${j}D | awk -F '|' '{print $3}') >> $FILE
	done
done
