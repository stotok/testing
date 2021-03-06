#include <stdio.h>
#include <string.h>

#include "lua.h"
#include "lauxlib.h"
#include "lualib.h"

int main(int argc, char *argv[])
{
    char buff[256];
    int error;
    /* open lua */
    lua_State *L = luaL_newstate();
    /* open standard library */
    luaL_openlibs(L);

    while (fgets(buff, sizeof(buff), stdin)) {
        error = luaL_loadstring(L, buff) || lua_pcall(L, 0, 0, 0);
        if (error) {
            fprintf(stderr, "%s\n", lua_tostring(L, -1));
            lua_pop(L, 1);
        }
    }
    lua_close(L);
    return 0;
}
