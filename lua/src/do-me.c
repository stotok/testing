#include <stdio.h>

#include "lua.h"
#include "lualib.h"
#include "lauxlib.h"

int main(int argc, char *argv[])
{
#if 1
    lua_State *L = luaL_newstate();
    luaL_openlibs(L);
    luaL_loadfile(L, "do-me.lua");
    lua_pcall(L, 0, 0, 0);
#else
    /* init and open lua */
    lua_State *L = lua_open();
    /* load lua base lib */
    lua_baselibopen(L);
    /* run the script */
    lua_dofile(L, "do-me.lua");
#endif
    /* cleanup lua */
    lua_close(L);
    return 0;
}
