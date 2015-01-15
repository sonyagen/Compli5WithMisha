%{
#include "attributes.h"
#include "source.tab.hpp"
#include <stdio.h>

%}

%option yylineno
%option noyywrap

%%

"(" 		{return LP;};
")" 		{return RP;};
"{" 		{return LC;};
"}" 		{return RC;};
";" 		{return SC;};
":" 		{return COL;};
"=" 		{return ASSIGN;};
"+"  		{return PLUS;};
"-"  		{return MINUS;};
"*" 		{return MULT;};
"/"  		{return DIV;};
"<="|">="|"=="|"!="|>|<		{yylval.name = yytext; return REL_OP;};
"and"		{return AND;};
"or"		{return OR;};
"M" 		{yylval.type = "METER";return METER;};
"F" 		{yylval.type = "FOOT";return FOOT;};
"C" 		{yylval.type = "CUBIT";return CUBIT;};
"int"		{yylval.type = "INT"; return INT;}; 
"print"		{return PRINT;};
"input"		{return INPUT;};
\"[^"]*\"	{yylval.name = yytext; return STRING;};
"true"		{return TRUE;}; 
"false"		{return FALSE;}; 
"if"		{return IF;}; 
"else"		{return ELSE;}; 
"while"		{return WHILE;}; 
"break"		{return BREAK;};
"not"		{return NOT;}; 
"bool"		{yylval.type = "BOOL"; return BOOL;};
[1-9][0-9]*|0		{yylval.name = yytext; return NUM;};
"switch"			{return SWITCH;};
"case"				{return CASE;};
[a-zA-Z]+			{yylval.name = yytext; return ID;}; 
"//"[^\n]*\n 		{;};
[\t\n\r ]			{;};
.					{exit(1);};

%%