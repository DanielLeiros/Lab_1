
#Exemplo mais completo de um Makefile
Algumas variaveis sao usadas com significado especial:
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
all: questao01 questao02 questao03
debug: CFLAGS += -g -O0
debug: questao01 questao02 questao03
# Alvo (target) para a construcao do executavel questao01
# Define os arquivos classe11.o, classe12.o e main1.o como dependencias
questao01: $(OBJ_DIR)/classe11.o $(OBJ_DIR)/classe12.o $(OBJ_DIR)/main1.o
	@echo "============="
	@echo "Ligando o alvo $@"
	@echo "============="
	$(CC) $(CFLAGS) -o $(BIN_DIR)/$@ $^
	@echo "+++ [Executavel questao01 criado em $(BIN_DIR)] +++"
	@echo "============="
# Alvo (target) para a construcao do objeto classe11.o
# Define os arquivos classe11.cpp e classe11.h como dependencias.
$(OBJ_DIR)/classe11.o: $(SRC_DIR)/questao01/classe11.cpp
	$(INC_DIR)/questao01/classe11.h
	$(CC) -c $(CFLAGS) -o $@ $<
# Alvo (target) para a construcao do objeto classe12.o
# Define os arquivos classe12.cpp, classe12.h e classe11.o como dependencias.
$(OBJ_DIR)/classe12.o: $(SRC_DIR)/questao01/classe12.cpp
	$(INC_DIR)/questao01/classe12.h $(OBJ_DIR)/classe11.o
	$(CC) -c $(CFLAGS) -o $@ $<
# Alvo (target) para a construcao do objeto main1.o
# Define o arquivo main1.cpp como dependencias.
$(OBJ_DIR)/main1.o: $(SRC_DIR)/questao01/main1.cpp
	$(CC) -c $(CFLAGS) -o $@ $<
# Alvo (target) para a construcao do executavel questao02
# Define os arquivos classe21.o e main2.o como dependencias.
questao02: $(OBJ_DIR)/classe21.o $(OBJ_DIR)/main2.o
	@echo "============="
	@echo "Ligando o alvo $@"
	@echo "============="
	$(CC) $(CFLAGS) -o $(BIN_DIR)/$@ $^
	@echo "+++ [Executavel questao02 criado em $(BIN_DIR)] +++"
	@echo "============="
# Alvo (target) para a construcao do objeto classe21.o
# Define os arquivos classe21.cpp e classe21.h como dependencias.
$(OBJ_DIR)/classe21.o: $(SRC_DIR)/questao02/classe21.cpp
	$(INC_DIR)/questao02/classe21.h
	$(CC) -c $(CFLAGS) -o $@ $<
# Alvo (target) para a construcao do objeto main2.o
# Define o arquivo main2.cpp como dependências.
$(OBJ_DIR)/main2.o: $(SRC_DIR)/questao02/main2.cpp
	$(CC) -c $(CFLAGS) -o $@ $<
# Alvo (target) para a construcao do executavel questao03
# Define os arquivos classe31.o e main3.o como dependências.
questao03: $(OBJ_DIR)/classe31.o $(OBJ_DIR)/classe31.o $(OBJ_DIR)/main3.o
	@echo "============="
	@echo "Ligando o alvo $@"
	@echo "============="
	$(CC) $(CFLAGS) -o $(BIN_DIR)/$@ $^
	@echo "+++ [Executavel questao03 criado em $(BIN_DIR)] +++"
	@echo "============="
# Alvo (target) para a construcao do objeto classe31.o
# Define os arquivos classe31.cpp e classe31.h como dependências.
$(OBJ_DIR)/classe31.o: $(SRC_DIR)/questao03/classe31.cpp
	$(INC_DIR)/questao03/classe31.h
	$(CC) -c $(CFLAGS) -o $@ $<
# Alvo (target) para a construcao do objeto main3.o
# Define o arquivo main3.cpp como dependências.
$(OBJ_DIR)/main3.o: $(SRC_DIR)/questao03/main3.cpp
	$(CC) -c $(CFLAGS) -o $@ $<
# Alvo (target) para a construcao do objeto main2.o
# Define o arquivo main2.cpp como dependências.
$(OBJ_DIR)/main2.o: $(SRC_DIR)/questao02/main2.cpp
	$(CC) -c $(CFLAGS) -o $@ $<
# Alvo (target) para a construcao do executavel questao03
# Define os arquivos classe31.o e main3.o como dependências.
questao03: $(OBJ_DIR)/classe31.o $(OBJ_DIR)/classe31.o $(OBJ_DIR)/main3.o
	@echo "============="
	@echo "Ligando o alvo $@"
	@echo "============="
	$(CC) $(CFLAGS) -o $(BIN_DIR)/$@ $^
	@echo "+++ [Executavel questao03 criado em $(BIN_DIR)] +++"
	@echo "============="
# Alvo (target) para a construcao do objeto classe31.o
# Define os arquivos classe31.cpp e classe31.h como dependências.
$(OBJ_DIR)/classe31.o: $(SRC_DIR)/questao03/classe31.cpp
	$(INC_DIR)/questao03/classe31.h
	$(CC) -c $(CFLAGS) -o $@ $<
# Alvo (target) para a construcao do objeto main3.o
# Define o arquivo main3.cpp como dependências.
$(OBJ_DIR)/main3.o: $(SRC_DIR)/questao03/main3.cpp
$(CC) -c $(CFLAGS) -o $@ $<
# Alvo (target) para a construcao do executavel de teste
test: $(TEST_DIR)/main.o questao01 questao02 questao03
	@echo"============="
	@echo"Ligando o alvo $@"
	@echo"============="
	$(CC)$(CFLAGS) -o $(BIN_DIR)/testador $<
	@echo"+++ [Executavel testador criado em $(BIN_DIR)] +++"
	@echo"============="

# Alvo (target) para a construcao do objeto main.o
# Define o arquivo main.cpp como dependencias.
$(TEST_DIR)/main3.o: $(TEST_DIR)/main.cpp
	$(CC) -c $(CFLAGS) -o $@ $<
# Alvo (target) para a geração automatica de documentacao usando o Doxygen.
# Sempre remove a documentacao anterior (caso exista) e gera uma nova.
doxy:
	$(RM) $(DOC_DIR)/*
	doxygen Doxyfile
# Alvo (target) usado para limpar os arquivos temporarios (objeto)
# gerados durante a compilacao, assim como os arquivos binarios/executaveis.
clean:
	$(RM) $(BIN_DIR)/*
	$(RM) $(OBJ_DIR)/*
# FIM do Makefile