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
	$(CC) -o $@ $(CFLAGS) $(LDFLAGS) $? $(LIBS)

do-me: do-me.c
	$(CC) -o $@ $(CFLAGS) $(LDFLAGS) $? $(LIBS)

add: add.c
	$(CC) -o $@ $(CFLAGS) $(LDFLAGS) $? $(LIBS)

average: average.c
	$(CC) -o $@ $(CFLAGS) $(LDFLAGS) $? $(LIBS)

slone: slone.c
	$(CC) -o $@ $(CFLAGS) $(LDFLAGS) $? $(LIBS)

sdump: sdump.c
	$(CC) -o $@ -DWITH_MAIN $(CFLAGS) $(LDFLAGS) $? $(LIBS)

sconf: sconf.c sdump.c
	$(CC) -o $@ $(CFLAGS) $(LDFLAGS) sconf.c sdump.c $(LIBS)

clean:
	$(RM) init do-me add average slone sdump sconf
