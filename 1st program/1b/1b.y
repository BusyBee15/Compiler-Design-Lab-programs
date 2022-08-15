%{
#include<stdio.h>
#include<string.h>
#include<stdlib.h>
%}
%%
S  : B C 
   ;
B  : 'a' B 'b'
   | 
   ;
C  : 'b' C 'c'
   | 
   ;
%%
int main()
{ 
  printf("enter the expression\n");
  yyparse();
  printf("Valid\n");
  return 0;
}

int yyerror()
{
  printf("Invalid\n");
  exit(0);
}
