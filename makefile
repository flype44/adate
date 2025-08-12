# GCC makefile for adate

CC = /opt/amiga/bin/m68k-amigaos-gcc
RM = rm -f

CFLAGS  = -m68000 -Os -s -noixemul -fomit-frame-pointer
TARGET  = adate
OBJECTS = adate.o

.PHONY: all clean

all: $(TARGET)

$(TARGET): $(OBJECTS)
	$(CC) $(CFLAGS) -o $@ $(OBJECTS)

%.o: %.c $(HEADERS)
	$(CC) $(CFLAGS) -c $< -o $@

clean:
	$(RM) $(OBJECTS) $(TARGET)
