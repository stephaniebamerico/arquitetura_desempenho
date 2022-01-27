CFLAGS = -O0
CC = gcc

all: assembly

clean:
	-rm *.o

purge: clean
	-rm assembly

assembly: assembly.c
	$(CC) $(CFLAGS) assembly.c -o assembly -DLIKWID_PERFMON -llikwid
