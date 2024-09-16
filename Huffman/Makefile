CC = gcc
CFLAGS = -std=c11 -g
CDEBUGADDRESS = -fsanitize=address

SRCS = $(wildcard *.c)

huffman_encode: $(SRCS)
	$(CC) $(CFLAGS) -o $@ $^

huffman_debug: $(SRCS)
	$(CC) $(CDEBUGADDRESS) -o $@ $^