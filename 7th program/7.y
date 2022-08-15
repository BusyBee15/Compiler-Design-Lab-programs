%{
#include<stdio.h>
#include<stdlib.h>
%}

%token TYPE ID NUM

%left '+' '-'
%left '*' '/'

%%
S    : FUN {printf("accepted\n");exit(0);}
FUN  : TYPE'('PARAM')''{'BODY'}' 
     | TYPE'('')''{'BODY'}'
     ;
PARAM: TYPE','PARAM 
     | TYPE  
     ;
BODY : TYPE';'BODY  
     | E';'BODY  
     |
     ;
E    : ID'='E
     | E'+'E   
     | E'-'E   
     | E'*'E  
     | E'/'E 
     | ID  
     | NUM 
     ;
%%


int main()
{
   printf("Enter the input\n");
   yyparse();
   return 0;
}

int yyerror(char* s)
{ 
   printf("%s\n", s);
   printf("Invalid\n");
   exit(0);
}





