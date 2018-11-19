#include <iostream>

extern "C"{
    #include "lua.h"
    #include "lualib.h"
    #include "lauxlib.h"
}

using namespace std;

int main(int argc,char *argv[]){
    
    string imput;

    cout<<"Assignment #3-3, Zach Selchau, zhselchau1998@yahoo.com"<<endl;

    lua_State *L=luaL_newstate();
    luaL_openlibs(L);

    luaL_dofile(L, argv[1]);
    
    //Imput
    //cout << "got to imput\n";
    getline(cin, imput);
    //imput = "InfixToPostfix('"+imput+"')";

    //Calling infix to postfix
    //cout << "got to function call\n";
    //luaL_dostring(L, imput.c_str());
    lua_getglobal(L, "InfixToPostfix");
    lua_pushstring(L, imput.c_str());

    //Getting output
    //cout << "got to output\n";
    lua_pcall(L, 1, 1, 0);

    const char *output = luaL_checkstring(L, -1);
    cout << output << endl;
    
    lua_close(L);

}
