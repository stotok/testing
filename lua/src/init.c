#include <stdio.h>

#include "lua.h"
#include "lauxlib.h"
#include "lualib.h"

int main(int argc, char *argv[])
{
    /* init lua */
#if 1 /* > lua50 */
    lua_State *L = luaL_newstate();
    luaL_openlibs(L);
#else /* lua50 */
    lua_State *L = lua_open();
    /* load various lua lib */
    lua_baselibopen(L);
    luaopen_table(L);
    luaopen_io(L);
    luaopen_string(L);
    luaopen_math(L);
#endif

    /* cleanup lua */
    lua_close(L);
    return 0;
}
