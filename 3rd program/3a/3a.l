%{
#include<stdio.h>
int inside=0, c=0, ml=0;
%}

%%
"//"[^\n]* {c++; *yytext="";}
"/*" {inside =1;}
\n {if(inside==1) ml++; else ECHO;}
"*/" {inside=0; ml++;}
. {if(inside==0) ECHO;}
%%

int yywrap()
{
   return 1;
}
int main()
{
   yyin = fopen("test.c", "r");
   yylex();
   printf("Number of single line comments: %d\n multi line comment lines :%d\n",c,ml);
   return 0;
}
