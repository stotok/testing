# for lua50
LUA_PATH=$(shell lua-config --include --libs)

# for lua52
#LUA_LIB=-I/usr/include/lua5.2 -L/usr/include -llua5.2

# for lua53
LUA_LIB=-I${HOME}/project/lua-5.3.0/src -L${HOME}/project/lua-5.3.0/src -llua


CFLAGS=-Wall
#-static

init: init.c
	gcc -o $@ $? $(LUA_PATH)

do-me: do-me.c
	gcc -o $@ $? $(LUA_PATH)

add: add.c
	gcc -o $@ $? $(LUA_PATH)

average: average.c
	gcc -o $@ $? $(LUA_PATH)

slone: slone.c
	gcc ${CFLAGS} $? ${LUA_LIB} -o $@

sdump: sdump.c
	gcc ${CFLAGS} $? ${LUA_LIB} -o $@

clean:
	rm init do-me add average slone sdump
