#include <stdio.h>
#include <string.h>
#include <stdlib.h>

#include "lua.h"
#include "lauxlib.h"
#include "lualib.h"

#define MAX_COLOR 255

extern void stackDump(lua_State *, const char *);

struct ColorTable {
    char *name;
    unsigned char red, green, blue;
} colortable[] = {
    {"WHITE",    MAX_COLOR, MAX_COLOR, MAX_COLOR},
    {"RED",      MAX_COLOR,         0,         0},
    {"GREEN",            0, MAX_COLOR,         0},
    {"BLUE",             0,         0, MAX_COLOR},
    {NULL,               0,         0,         0}       /* sentinel */
};

static void error(lua_State *L, const char *fmt, ...)
{
    va_list argp;
    va_start(argp, fmt);
    vfprintf(stderr, fmt, argp);
    va_end(argp);
    lua_close(L);
    exit(EXIT_FAILURE);
}

/* assume that table is on the stack top */
static int getcolorfield(lua_State *L, const char *key)
{
    int result;

    lua_getfield(L, -1, key);
    stackDump(L, "getclrf - after getfield");
    if (!lua_isnumber(L, -1)) {
        error(L, "invalid component in background color");
    }

    result = (int) (lua_tonumber(L, -1) * MAX_COLOR);
    lua_pop(L, 1);                               /* remove 1 number */
    return result;
}

#if 0
static void setcolorfield(lua_State *L, const char *index, int value)
{
    lua_pushnumber(L, (double) value/MAX_COLOR);
    lua_setfield(L, -2, index);
}
#endif

static void load(lua_State *L, const char *fname, int *w, int *h, int *r, int *g, int *b)
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

    lua_getglobal(L, "background");
    stackDump(L, "load - after background");
    if (!lua_istable(L, -1)) {
        error(L, "'background' is not a table");
    }
    *r = getcolorfield(L, "r");
    *g = getcolorfield(L, "g");
    *b = getcolorfield(L, "b");

    lua_pop(L, 3);                             /* remove the stacks */

    stackDump(L, "load_exit");
}

int main(int argc, char *argv[])
{
    int width = 0;
    int height = 0;
    int red = 0;
    int green = 0;
    int blue = 0;
    lua_State *L = luaL_newstate();
    luaL_openlibs(L);

    stackDump(L, "Enter");

    /* LOAD width and height */
    load(L, "sconf.lua", &width, &height, &red, &green, &blue);
    printf("width = %d, height = %d, red = %d, green = %d, blue = %d\n", width, height, red, green, blue);

    stackDump(L, "Exit");
    lua_close(L);
    return 0;
}
