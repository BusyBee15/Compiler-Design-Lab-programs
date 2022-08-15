%{
int p=0, n=0, pf=0, nf=0;
%}

%%
\-[0-9]+[.]*[0-9]*\/[-][0-9]+[.]*[0-9]* pf++;
[0-9]+[.]*[0-9]*\/[0-9]+[.]*[0-9]* pf++;
[-][0-9]+[.]*[0-9]*\/[0-9]+[.]*[0-9]* nf++;
[0-9]+[.]*[0-9]*\/[-][0-9]+[.]*[0-9]* nf++;
[0-9]*[.][0-9]+ pf++;
[-][0-9]+[.][0-9]+ nf++;
[+]?[0-9]+ { p++;}
[-][0-9]+ n++;
\n return 0;
%%

int main()
{
   printf("enter the numbers\n");
   yylex();
   printf("Number of positive integers: %d\nNumber of negative integers: %d\nNumber of positive fractions: %d\nNumber of negative fractions: %d\n", p, n, pf, nf);
   return 0;
}
