CC = gcc
CFLAGS = `pkg-config --cflags glfw3 cglm` -I/usr/local/include/leif
LDFLAGS = `pkg-config --libs glfw3 cglm` -L/usr/local/lib -Wl,-rpath,/usr/local/lib -lleif -lclipboard -lxcb -lGL -lm

SRC = main.c
OUT = main

all:
	$(CC) $(SRC) -o $(OUT) $(CFLAGS) $(LDFLAGS)

clean:
	rm -f $(OUT)

