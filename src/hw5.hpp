#ifndef _236360_
#define _236360_

#include <string>
#include <list>
using namespace std;

typedef struct{

	//for ID
	//holds id returned by lex
    string	name;
	//for TYPE and Exp - holds type of the exp.
	//also used for statement to determine type of statement:
	//single declaration to statement to create a new scope if needed
	//or not single declaration to statement to "undo" opening of new scope
    string	type;
	//for an exp 
	//holds the correct s[i] string
	string  var;
	//for NUM and STRING
	//holds value returned by lex
	string value; 
	
	//PAY ATTENSION 
	list<int> trueList;
	list<int> faleList;
	list<int> nextList;
	
	//for Marker M
	//holds the address of an instruction
	int nextAddress;
	
	
} yystype;

#define YYSTYPE yystype

//#define YYDEBUG 1

#endif
