#include <stdio.h>

#include "lua.h"
#include "lualib.h"
#include "lauxlib.h"

int main(int argc, char *argv[])
{
    /* init and open lua */
    lua_State *L = lua_open();
    /* load lua base lib */
    lua_baselibopen(L);
    /* run the script */
    lua_dofile(L, "do-me.lua");
    /* cleanup lua */
    lua_close(L);
    return 0;
}
