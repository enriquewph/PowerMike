CC		:= g++
CFLAGS	:= -std=c++17 -Wall -Wextra -g

ARCHIVO := main

BIN		:= bin
SRC		:= src
INCLUDE	:= include
LIB		:= lib
OBJ		:= bin/obj

LIBRARIES	:= $('')

ifeq ($(OS),Windows_NT)
EXECUTABLE	:= $(ARCHIVO).exe
SOURCEDIRS	:= $(SRC)
INCLUDEDIRS	:= $(INCLUDE)
LIBDIRS		:= $(LIB)
else
EXECUTABLE	:= $(ARCHIVO)
SOURCEDIRS	:= $(shell find $(SRC) -type d)
INCLUDEDIRS	:= $(shell find $(INCLUDE) -type d)
LIBDIRS		:= $(shell find $(LIB) -type d)
endif

CINCLUDES	:= $(patsubst %,-I%, $(INCLUDEDIRS:%/=%))

CLIBS		:= $(patsubst %,-L%, $(LIBDIRS:%/=%)) # integrador de librerias....

CLIBS_DIRS	:= $(LIBDIRS:%/=%) #Directorios de librerias a buscar archivos.
CLIBS_INC	:= $(patsubst %,-I%, $(CLIBS_DIRS)) #Directorios, con el sufijo -I para ser incluidos en la compilacion.
CLIBS_SRC	:= $(wildcard $(patsubst %,%/*.cpp, $(CLIBS_DIRS)))

SOURCES		:= $(wildcard $(patsubst %,%/*.cpp, $(SOURCEDIRS)))
SOURCES		+= $(CLIBS_SRC) #añadir .cpp de librerias a sources.

CINCLUDES	+=  $(CLIBS_INC) #añadir archivos ubicacion de archivos .h de librerias para ser incluidos

OBJECTS		:= $(SOURCES:.cpp=.o)

CXXFLAGS 	:= $(LIBRARIES) $(CINCLUDES)

OBJECTSF	:= $(patsubst lib/%,$(OBJ)/lib/%,$(patsubst src/%,$(OBJ)/src/%,$(OBJECTS)))

%.o: %.cpp #Compilar objetos .o desde sus sources. Crear el directorio para el archivo.
	@mkdir -p $(patsubst lib/%,$(OBJ)/lib/%,$(patsubst src/%,$(OBJ)/src/%,$(dir $@)))
	$(CC) $(CXXFLAGS) -c -o bin/obj/$@ $<

all: $(BIN)/$(EXECUTABLE)

clean:
	-$(RM) $(BIN)/$(EXECUTABLE)
	-$(RM) $(OBJECTS)

run: all
	./$(BIN)/$(EXECUTABLE)
.PHONY: all

$(BIN)/$(EXECUTABLE): $(OBJECTS)
	$(CC) $(CFLAGS) $(CINCLUDES) $(CLIBS) $(OBJECTSF) -o $@ $(LIBRARIES)