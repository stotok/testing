#include <stdio.h>
#include <string.h>

#include "lua.h"
#include "lauxlib.h"
#include "lualib.h"

#ifdef WITH_MAIN
static
#endif
void stackDump(lua_State *L, const char *str)
{
    int i;
    int top = lua_gettop(L);                  /* depth of the stack */
    printf("\nStack %s: ", str);
    for (i = 1; i <= top; i++) {              /* repeat each level */
        int t = lua_type(L, i);
        switch (t) {
            case LUA_TSTRING:
                printf("'%s'", lua_tostring(L, i));
                break;
            case LUA_TBOOLEAN:
                printf(lua_toboolean(L, i) ? "true" : "false");
                break;
            case LUA_TNUMBER:
                printf("%g", lua_tonumber(L, i));
                break;
            default:
                printf("%s", lua_typename(L, t));
                break;
        }
        printf("  ");                            /* put a separator */
    }
    printf("\n");                                    /* end of list */
}

#ifdef WITH_MAIN
int main(int argc, char *argv[])
{
    lua_State *L = luaL_newstate();
    
    lua_pushboolean(L, 1);
    lua_pushnumber(L, 10);
    lua_pushnil(L);
    lua_pushstring(L, "hello");
    stackDump(L, "Enter"); /* true 10 nil 'hello' */

    lua_pushvalue(L, -4);
    stackDump(L, "1"); /* true 10 nil 'hello' true */
    
    lua_replace(L, 3);
    stackDump(L, "2"); /* true 10 true 'hello' true */
    
    lua_settop(L, 6);
    stackDump(L, "3"); /* true 10 true 'hello' nil  nil */
    
    lua_remove(L, -3);
    stackDump(L, "4"); /* true 10 true nil nil */
    
    lua_settop(L, -5);
    stackDump(L, "5"); /* true */

    lua_close(L);
    return 0;
}
#endif
