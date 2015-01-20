LUA_PATH=$(shell lua-config --include --libs)
LUA_INCLUDE=-I/usr/include/lua5.2 -L/usr/include -llua5.2

init: init.c
	gcc -o $@ $? -I/usr/include/lua5.2 -L/usr/include -llua5.2

do-me: do-me.c
	gcc -o $@ $? $(LUA_PATH)

add: add.c
	gcc -o $@ $? $(LUA_PATH)

average: average.c
	gcc -o $@ $? $(LUA_PATH)

slone: slone.c
	gcc -o $@ $? ${LUA_INCLUDE}

clean:
	rm init do-me add average slone
