CC=gcc
CFLAGS=-I.
DEPS = cout.h

%.o: %.c $(DEPS)
	$(CC) -c -o $@ $< $(CFLAGS)

main: main.o cout.o 
	$(CC) -o main main.o cout.o 
