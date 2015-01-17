all :
	clear && bison -d hw5.ypp && flex hw5.lex && g++ -ansi -pedantic -Wall -D SONYAMISHADEBUG=1 lex.yy.c bp.cpp output.cpp hw5.tab.cpp -o ../ex5.exe
clean :
	rm lex.yy.c hw5.tab.cpp