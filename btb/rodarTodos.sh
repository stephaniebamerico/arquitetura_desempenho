#!/bin/bash

#for i in 1024 2048 4096 8192 16384; do
for i in 1024 2048 4096; do
	for j in 2 4 8 16 32 64 128 256 512 1024; do
		./gera_casos.sh $i $j > assembly.c
		make purge
		make
		likwid-perfctr -C 7 -f -g BRANCH -m ./assembly > ${i}N${j}D
	done
done

./geraDados.sh
gnuplot makeGraphs.plot
