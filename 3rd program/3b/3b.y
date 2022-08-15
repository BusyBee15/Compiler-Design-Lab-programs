%{
#include<stdio.h>
#include<stdlib.h>
int count=0;
%}

%token FOR NUM LT GT ID
%left '+' '-'
%left '*' '/'

%%
S : I {printf("Nested ifs are %d\n", count);}
I : FOR A B {count++;}
A : '('E';'E';'E')'
B : '{'B'}'
  | I
  | E
  |
  ;
E : E'+'E
  | E'-'E
  | E'*'E
  | E'<'E
  | E'>'E
  | E'='E
  | E '<''=' E
  | E '>''=' E
  | NUM
  | ID
  ;
%%

int main()
{
   printf("Enter the input\n");
   yyparse();
   printf("Valid\n");
}

int yyerror()
{
   printf("Invalid\n");
   exit(0);
}
