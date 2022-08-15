%{
int l=0, w=0, ws=0, c=0;
%}

%%
[ ] ws++;
[\t] ws=ws+3;
[a-zA-Z]+ {w++; c=c+yyleng;}
\n l++;
. return 0;

%%

int main()
{
  //printf("enter the string:\n");
  yyin = fopen("test.txt", "r");
  yylex();
  printf("Number of lines:%d\nNumber of words:%d\nNumber of whitespaces:%d\nNumber of characters:%d\n",l,w,ws,c);
  return 0;
}

