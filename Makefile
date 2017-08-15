
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
SRC_DIR=./src
OBJ_DIR=./build
BIN_DIR=./bin
DOC_DIR=./doc
TEST_DIR=./test
# Outras variaveis
# Opcoes de compilacao
CFLAGS = -Wall -pedantic -ansi -std=c++11 -I. -I$(INC_DIR)
# Garante que os alvos desta lista nao sejam confundidos com arquivos de mesmo nome
.PHONY: all clean distclean doxy
# Define o alvo (target) para a compilacao completa.
# Define os alvos questao01, questao02 e questao03 como dependencias.
# Ao final da compilacao, remove os arquivos objeto.
all: questao02
debug: CFLAGS += -g -O0
debug: questao02
# Alvo (target) para a construcao do executavel questao01
# Define os arquivos classe11.o, classe12.o e main1.o como dependencias
questao02: $(OBJ_DIR)/questao2.o $(OBJ_DIR)/primo.o $(OBJ_DIR)/fatorial.o
	@echo "============="
	@echo "Ligando o alvo $@"
	@echo "============="
	$(CC) $(CFLAGS) -o $(BIN_DIR)/$@ $^
	@echo "+++ [Executavel questao01 criado em $(BIN_DIR)] +++"
	@echo "============="
# Alvo (target) para a construcao do objeto classe11.o
# Define os arquivos classe11.cpp e classe11.h como dependencias.
$(OBJ_DIR)/fatorial.o: $(SRC_DIR)/fatorial.cpp
	#$(INC_DIR)/fatorial.h
	$(CC) -c $(CFLAGS) -o $@ $<
# Alvo (target) para a construcao do objeto classe12.o
# Define os arquivos classe12.cpp, classe12.h e classe11.o como dependencias.
$(OBJ_DIR)/primo.o: $(SRC_DIR)/primo.cpp
	#$(INC_DIR)/primo.h
	$(CC) -c $(CFLAGS) -o $@ $<
# Alvo (target) para a construcao do objeto main1.o
# Define o arquivo main1.cpp como dependencias.
$(OBJ_DIR)/questao2.o: $(SRC_DIR)/questao2.cpp
	$(CC) -c $(CFLAGS) -o $@ $<

doxy:
	$(RM) $(DOC_DIR)/*
	doxygen Doxyfile
# Alvo (target) usado para limpar os arquivos temporarios (objeto)
# gerados durante a compilacao, assim como os arquivos binarios/executaveis.
clean:
	$(RM) $(BIN_DIR)/*
	$(RM) $(OBJ_DIR)/*
# FIM do Makefile