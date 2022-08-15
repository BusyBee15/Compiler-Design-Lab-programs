%{
#include<stdio.h>
#include<stdlib.h>
int count=0;
%}

%token IF ELSE EXP 

%%
S : I  {printf("Nested ifs are %d\n", count); exit(0);}
I : IF'('EXP')' B {count++;}
  ;
B : '{'B'}' 
  | I
  | EXP
  |
  ;
%%

int main()
{
   printf("Enter the input\n");
   yyparse();
   return 0;
}

int yyerror()
{   
   printf("INVALID\n");
   exit(0);
}
