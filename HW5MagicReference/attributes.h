#ifndef _ATTRIBUTES_H
#define _ATTRIBUTES_H

#include <string>
#include <list>
#include <stack>
using namespace std;

typedef struct{
	string name;
	string type;
	string value;
	int ezer;
	stack<string> stackOfValues;
	list<int> trueList;
	list<int> falseList;
	list<int> breaksList;
	stack<int> ezerStack;
	stack<string> stackOfTypes;
	list<int> nextList;
} stype;

#define YYSTYPE stype

#endif