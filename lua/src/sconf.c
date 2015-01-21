#include <stdio.h>
#include <string.h>
#include <stdlib.h>

#include "lua.h"
#include "lauxlib.h"
#include "lualib.h"

static void error(lua_State *L, const char *fmt, ...)
{
    va_list argp;
    va_start(argp, fmt);
    vfprintf(stderr, fmt, argp);
    va_end(argp);
    lua_close(L);
    exit(EXIT_FAILURE);
}

static void load(lua_State *L, const char *fname, int *w, int *h)
{
    if (luaL_loadfile(L, fname) || lua_pcall(L, 0, 0, 0)) {
        error(L, "cannot run config. file: %s", lua_tostring(L, -1));
    }
    lua_getglobal(L, "width");  /* push the value onto the stack -2 */
    lua_getglobal(L, "height"); /* push the value onto the stack -1 */
    if (!lua_isnumber(L, -2)) {
        error(L, "'width' should be a number\n");
    }
    if (!lua_isnumber(L, -1)) {
        error(L, "'height' should be a number\n");
    }
    *w = lua_tointeger(L, -2);
    *h = lua_tointeger(L, -1);
}

int main(int argc, char *argv[])
{
    int width = 0;
    int height = 0;
    lua_State *L = luaL_newstate();
    luaL_openlibs(L);

    load(L, "sconf.lua", &width, &height);
    printf("width = %d, height = %d", width, height);

    lua_close(L);
    return 0;
}
