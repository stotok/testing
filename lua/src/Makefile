LUA_PATH = $(shell lua-config --include --libs)


init: init.c
	gcc -o $@ $? $(LUA_PATH)

do-me: do-me.c
	gcc -o $@ $? $(LUA_PATH)

add: add.c
	gcc -o $@ $? $(LUA_PATH)

average: average.c
	gcc -o $@ $? $(LUA_PATH)

clean:
	rm init do-me add average
