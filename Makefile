
CC = clang
CFLAGS = -O3

OBJS = test.o sha256-ref.o sha256-sse.o

%.o: %.c
	$(CC) -c $(CFLAGS) -o $@ $<


all: $(OBJS)
	$(CC) -o test $(OBJS)
