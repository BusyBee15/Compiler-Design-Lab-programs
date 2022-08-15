%{
int k=0, id=0, op=0;
%}

%%
"int"|"float"|"if"|"else"|"while"|"do"|"return"|"break"|"continue"|"switch"|"double"|"void"|"for"|"long"|"sizeof"|"struct"|"enum"|"signed"|"default" {printf("Keyword\n"); k++;}
[a-zA-Z_][a-zA-Z0-9_]* {printf("identifier\n"); id++;}
"+"|"-"|"*"|"/"|">"|"<"|">="|"<="|"=="|"-"|"!="|"=" {printf("operator\n"); op++;}
. ;

%%

int main()
{
  //printf("enter the input (enter # to exit)\n");
  yyin = fopen("test.c", "r");
  yylex();
  printf("Number of keywords = %d\nNumber of identifiers = %d\nNumber of operators = %d\n", k, id, op);
  return 0;
}
