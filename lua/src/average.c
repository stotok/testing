#include <stdio.h>

#include "lua.h"
#include "lualib.h"
#include "lauxlib.h"

static int average(lua_State *L)
{
    /* get number of args */
    int n = lua_gettop(L);
    double sum = 0;
    int i;

    /* loop through each arg */
    for (i = 1; i <= n; i++) {
        if (!lua_isnumber(L, i)) {
            lua_pushstring(L, "Incorrect arg to 'average'");
            lua_error(L);
        }

        /* total the args */
        sum += lua_tonumber(L, i);
    }

    /* push the average */
    lua_pushnumber(L, sum / n);
    /* push the sum */
    lua_pushnumber(L, sum);
    /* return the number of results */
    return 2;
}

int main(int argc, char *argv[])
{
    lua_State *L = lua_open();
    lua_baselibopen(L);
    /* register our function */
    lua_register(L, "average", average);
    /* run the script */
    lua_dofile(L, "average.lua");
    

    lua_close(L);
    return 0;
}
