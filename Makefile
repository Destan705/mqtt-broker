CC = gcc
CFLAGS = -Wall -Wextra -g -fsanitize=address,undefined

hello: main.c
	$(CC) $(CFLAGS) main.c -o hello

clean:
	rm -f hello