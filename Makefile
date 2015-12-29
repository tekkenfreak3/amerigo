CFLAGS = -Wall -Wextra -std=c11 -g 
LDFLAGS = -lSDL2 -lSDL2_image -lSDL2_ttf -ljansson


ifeq ($(PROFILE), yes)
	CFLAGS += -pg

	LDFLAGS += -pg
endif

LDFLAGS += -lm -lpthread
CFLAGS += -D_REENTRANT -I/usr/include/SDL2
BINARY = amerigo

OBJS = amerigo.o
all: amerigo
amerigo: $(OBJS)

clean:
	find . -name "*.o" -exec rm {} \;
	find . -name "*~" -exec rm {} \;
	find . -name "\#*\#" -exec rm {} \;
	find . -name ".\#*" -exec rm {} \;
	find . -name $(BINARY) -exec rm {} \;
