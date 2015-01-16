%{
    #include <stdio.h>
    #include "hw5.hpp"
    #include "output.hpp"
    #include "hw5.tab.hpp"
    #include <iostream>
    using namespace std;
    using namespace output;
%}

%option yylineno
%option noyywrap

%%

"(" {  return LP;}
")" {  return RP;}
"{" {  return LC;}
"}" {  return RC;}
";" {  return SC;}
":" {  return COL;}
"=" {  return ASSIGN;}
"+" {  return PLUS;}
"-" {  return MINUS;}
"*" {  return MULT;}
"/" {  return DIV;}
"<="|">="|"=="|"!="|">"|"<" {  yylval.value = yytext; return REL_OP;}
"and" {  return AND; }
"or" {  return OR; }
"R" {  return RUBLE; }
"D" {  return DOLLAR; }
"E" {  return EURO; }
"int" {  return INT; }
"print" {  return PRINT; }
"input" {  return INPUT; }
\"[^"]*\" { yylval.value = yytext; return STRING; }
"true" {  return TRUE; }
"false" {  return FALSE; }
"if" {  return IF; }
"else" {  return ELSE; }
"while" {  return WHILE; }
"break" {  return BREAK; }
"not" {  return NOT; }
"bool" {  return BOOL; }
"switch" {  return SWITCH; }
"case" {  return CASE; }

[1-9][0-9]*|0 {  yylval.value = yytext; return NUM; }

[a-zA-Z]+ { 
    yylval.name = yytext;
    
    return ID;
} // TODO: where should I be?

[ \n\r\t] {}

"//"[^\n]*\n {}

. { errorLex(yylineno); exit(1); }

%%


