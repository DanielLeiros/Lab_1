
#Exemplo mais completo de um Makefile
#Algumas variaveis sao usadas com significado especial:
#$@ nome do alvo (target)
#$^ lista com os nomes de todos os pre-requisitos sem duplicatas
#$< nome do primeiro pre-requisito
# Comandos do sistema operacional
# Linux: rm -rf
# Windows: cmd //C del
RM = rm -rf
# Compilador
CC=g++
# Variaveis para os subdiretorios
LIB_DIR=./lib
INC_DIR=./include
SRC_DIR1=./src/q1
SRC_DIR2=./src/q2
SRC_DIR3=./src/q3
OBJ_DIR=./build
BIN_DIR=./bin
DOC_DIR=./doc
TEST_DIR=./test



CFLAGS = -Wall -pedantic -ansi -std=c++11 -I. -I$(INC_DIR)
.PHONY: all clean distclean doxy

all: questao01 questao02 questao03 

debug: CFLAGS += -g -O0

questao01: $(OBJ_DIR)/questao1.o $(OBJ_DIR)/calcula.o $(OBJ_DIR)/area.o $(OBJ_DIR)/perimetro.o $(OBJ_DIR)/volume.o
	@echo "============="
	@echo "Ligando o alvo $@"
	@echo "============="
	$(CC) $(CFLAGS) -o $(BIN_DIR)/$@ $^
	@echo "+++ [Executavel questao01 criado em $(BIN_DIR)] +++"
	@echo "============="

$(OBJ_DIR)/area.o: $(SRC_DIR1)/area.cpp
	$(CC) -c $(CFLAGS) -o $@ $<

$(OBJ_DIR)/perimetro.o: $(SRC_DIR1)/perimetro.cpp
	$(CC) -c $(CFLAGS) -o $@ $<

$(OBJ_DIR)/volume.o: $(SRC_DIR1)/volume.cpp
	$(CC) -c $(CFLAGS) -o $@ $<

$(OBJ_DIR)/calcula.o: $(SRC_DIR1)/calcula.cpp
	$(CC) -c $(CFLAGS) -o $@ $<

$(OBJ_DIR)/questao1.o: $(SRC_DIR1)/questao1.cpp
	$(CC) -c $(CFLAGS) -o $@ $<


questao02: $(OBJ_DIR)/questao2.o $(OBJ_DIR)/primo.o $(OBJ_DIR)/fatorial.o
	@echo "============="
	@echo "Ligando o alvo $@"
	@echo "============="
	$(CC) $(CFLAGS) -g -pg -O0 -o $(BIN_DIR)/$@ $^
	@echo "+++ [Executavel questao2 criado em $(BIN_DIR)] +++"
	@echo "============="

$(OBJ_DIR)/fatorial.o: $(SRC_DIR2)/fatorial.cpp
	
	$(CC) -c $(CFLAGS) -o $@ $<
$(OBJ_DIR)/primo.o: $(SRC_DIR2)/primo.cpp

	$(CC) -c $(CFLAGS) -o $@ $<

$(OBJ_DIR)/questao2.o: $(SRC_DIR2)/questao2.cpp
	$(CC) -c $(CFLAGS) -o $@ $<

questao03: $(OBJ_DIR)/questao3.o
	$(CC)  $(CFLAGS) $(OBJ_DIR)/questao3.o -o $(BIN_DIR)/questao3

$(OBJ_DIR)/questao3.o: 
	$(CC) -c $(CFLAGS) -O0 -g -pg $(SRC_DIR3)/questao3.cpp -o $(OBJ_DIR)/questao3.o
	@echo "+++ [Executavel questao3 criado em $(BIN_DIR)] +++"
	@echo "============="

doxy:
	$(RM) $(DOC_DIR)/*


clear:
	$(RM) $(BIN_DIR)/*
	$(RM) $(OBJ_DIR)/*
# FIM do Makefile
