cmake_minimum_required(VERSION 3.10)

#set the project name
project(ClientServer)

#include target directories



#add executable
add_executable(Server src/server/server.cpp)
add_executable(Client src/client/client.cpp)


