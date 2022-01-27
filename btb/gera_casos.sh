#!/bin/bash

# escreve o inicio do codigo c
echo "#include <stdio.h>
#include <likwid.h>

int main() {
    LIKWID_MARKER_INIT;

    LIKWID_MARKER_START(\"D2\");
    for (int i = 0; i < 10000000; ++i) {
        __asm__ ("

for i in $(seq 1 $(($(($2*8))-3))); do
    echo -en '\t\t'
    echo \"nop\;\";
done

echo "
        \"movl \$10, %eax;\"
        \"cmp \$15, %eax;\"
	\"jle l0;\"
"

for i in $(seq 0 $(($1-3))); do 
    for j in $(seq 1 $(($2-1))); do
        echo -en '\t\t'
        echo \"nop\;\"; 
    done
    echo -en '\t\t'
    echo \"l$i: jle l$(($i+1))\;\"; 
done

for j in $(seq 1 $(($2-1))); do
    echo -en '\t\t'
    echo \"nop\;\";
done
echo -en '\t\t'
echo \"l$(($1-2)): nop\;\";

echo "
        );
    }
    LIKWID_MARKER_STOP(\"D2\");

    LIKWID_MARKER_CLOSE;

    return 0 ;
}"
