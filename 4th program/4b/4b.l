%{
#include"y.tab.h"
%}

%%
"if"   return IF;
"else" return ELSE;
"("    return '(';
")"    return ')';
"{"    return '{';
"}"    return '}';
[a-zA-Z]+ return EXP;
\n     return 0;
.      return yytext[0];
%%


