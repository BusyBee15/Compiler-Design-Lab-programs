%{
#include"y.tab.h"
extern yylval;
%}

%%
("int"|"float"|"char"|"void")[ ][a-zA-Z_][a-zA-Z_0-9]+ return TYPE;
[a-zA-Z_][a-zA-Z_0-9]* return ID;
[0-9]+ {yylval = atoi(yytext); return NUM;}
. return yytext[0];
\n return 0;
%%
