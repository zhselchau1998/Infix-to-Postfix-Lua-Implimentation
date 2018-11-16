#include <iostream>

extern "C"{
    #include "lua.h"
    #include "lualib.h"
    #include "lauxlib.h"
}

using namespace std;

int main(int argc,char *argv[]){

    cout<<"Assignment #3-1, Zach Selchau, zhselchau1998@yahoo.com"<<endl;

    lua_State *L=luaL_newstate();
    luaL_openlibs(L);

    luaL_dofile(L, argv[1]);

    lua_close(L);

}
