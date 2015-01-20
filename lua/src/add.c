#include <stdio.h>

#include "lua.h"
#include "lualib.h"
#include "lauxlib.h"

int main(int argc, char *argv[])
{
    lua_State *L = lua_open();
    int sum;

    lua_baselibopen(L);
    /* load script */
    lua_dofile(L, "add.lua");
    /* func name */
    lua_getglobal(L, "add");
    /* first arg */
    lua_pushnumber(L, 41);
    /* second arg */
    lua_pushnumber(L, 22);
    /* call the func */
    lua_call(L, 2, 1);
    /* get result */
    sum = (int) lua_tonumber(L, -1);
    lua_pop(L, 1);

    printf("The result: %d\n", sum);

    lua_close(L);
    return 0;
}
