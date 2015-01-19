LUA_PATH = $(shell lua-config --include --libs)


init: init.c
	gcc -o $@ $? $(LUA_PATH)

do-me: do-me.c
	gcc -o $@ $? $(LUA_PATH)

clean:
	rm init do-me
