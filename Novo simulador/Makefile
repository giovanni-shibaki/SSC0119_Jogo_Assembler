
# @file Makefile
# @author 11796444 - Giovanni Shibaki Camargo 
# @author 11796451 - Pedro Kenzo Muramatsu Carmo
# @author 11796472 - Lucas Keiti Anbo Mihara
# @version 0.1
# @date 2021-07-23
# 
# @copyright Copyright (c) 2021

UTILS= montador.c parser.c structs.c
MAIN= main.c
BINARY= main

FLAGS = -Werror 
FLAGS2 = -Werror -Wall -Wextra -Wpedantic -Wpointer-arith -O3 -march=native
VFLAGS= --leak-check=full --show-leak-kinds=all --track-origins=yes

all:
	@gcc $(FLAGS) $(MAIN) $(UTILS) -o $(BINARY) 

run:
	./$(BINARY)

valval: all
	@echo "Looking for leaks!"
	@valgrind $(VFLAGS) ./$(BINARY)

clean:
	@echo "Cleaning the mess!"
	@rm $(BINARY)
	@rm *.zip

zip:
	@echo "Creating a zip folder with all the important files!"
	@zip -r simple-simulator-11796444_giovanni-1196451_pedro-11796472-lucas.zip  $(MAIN) Makefile