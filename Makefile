target: all out clean
all:test.o
	gcc  t.o -o all.out -lpthread

test.o:
	gcc -c t.c

clean:
	rm -rf *.o *.out

out:
	.\/all.out
