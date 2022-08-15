%{
#include"y.tab.h"
extern yylval;
%}

%%
[0-9]+ {yylval=atoi(yytext); return NUM;}
"for"  return FOR;
[A-Za-z]+ return ID;
\n     return 0;
.      return yytext[0];
%%
