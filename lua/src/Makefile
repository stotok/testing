CC= gcc
CFLAGS= -Wall $(SYSCFLAGS) $(MYCFLAGS)
LDFLAGS= $(SYSLDFLAGS) $(MYLDFLAGS)
LIBS= $(SYSLIBS) $(MYLIBS)

SYSCFLAGS=
SYSLDFLAGS=
SYSLIBS=

MYCFLAGS= -I$(HOME)/project/lua-5.3.0/src
MYLDFLAGS= -L$(HOME)/project/lua-5.3.0/src
MYLIBS= -llua

RM= rm -f

# for lua50
LUA_PATH=$(shell lua-config --include --libs)

init: init.c
	$(CC) -o $@ $? $(LUA_PATH)

do-me: do-me.c
	$(CC) -o $@ $? $(LUA_PATH)

add: add.c
	$(CC) -o $@ $? $(LUA_PATH)

average: average.c
	$(CC) -o $@ $? $(LUA_PATH)

slone: slone.c
	$(CC) -o $@ $(CFLAGS) $(LDFLAGS) $? $(LIBS)

sdump: sdump.c
	$(CC) -o $@ $(CFLAGS) $(LDFLAGS) $? $(LIBS)

clean:
	$(RM) init do-me add average slone sdump
