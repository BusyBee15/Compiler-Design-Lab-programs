%{
#include<stdio.h>
#include<stdlib.h>
#include<string.h>
#include<ctype.h>

char AddToTable(char, char, char);
void ThreeAddressCode();
void Quradruple();
void Triple();


int ind=0;
char temp='A';

struct incod{
char opd1;
char opd2;
char opr;
};
%}

%token LETTER NUMBER 

%left '-' '+'
%right '*' '/'


%%
statement : LETTER '=' expr ';' {AddToTable((char)$1, (char)$3, '=');}
          | expr ';'
expr      : expr '+' expr {$$ = AddToTable((char)$1, (char)$3, '+');}
          | expr '-' expr {$$ = AddToTable((char)$1, (char)$3, '-');}
          | expr '*' expr {$$ = AddToTable((char)$1, (char)$3, '*');}
          | expr '/' expr {$$ = AddToTable((char)$1, (char)$3, '/');}
          | '(' expr ')' {$$ = (char)$2;}
          | LETTER {$$ = (char)$1;}
          | NUMBER {$$ = (char)$1;}
          ;
%%

int yyerror(char *s)
{
printf("%s", s);
exit(0);
}

struct incod code[20];
int id=0;

char AddToTable(char opd1, char opd2, char opr)
{
  code[ind].opd1 = opd1;
  code[ind].opd2 = opd2;
  code[ind].opr  = opr;
  ind++; temp++;
  return temp;
}

void ThreeAddressCode()
{
  int cnt=0;
  temp++;
  printf("THREE ADDRESS CODE\n");
  
  while(cnt<ind)
  {
     printf("%c: =\t", temp);
     
     if(isalpha(code[cnt].opd1))
        printf("%c\t", code[cnt].opd1);
     else
        printf("%c\t", temp);
        
     printf("%c\t", code[cnt].opr);
     
     if(isalpha(code[cnt].opd2))
        printf("%c\t", code[cnt].opd2);
     else
        printf("%c\t", temp);
        
     printf("\n");
     cnt++;
     temp++;
  }
}

void Quadruple()
{
    int id1=0, cnt=0;
    temp++;
    printf("QUADRUPLE\n");
    
    while(cnt<ind)
    {
       printf("%d:\t", id1);
       
       printf("%c\t", code[cnt].opr);
       
       if(isalpha(code[cnt].opd1))
          printf("%c\t", code[cnt].opd1);
       else
          printf("%c\t", temp);
       
       if(isalpha(code[cnt].opd2))
          printf("%c\t", code[cnt].opd2);
       else
          printf("%c\t", temp);
          
        printf("%c\t", temp);
        
        printf("\n");
        cnt++;
        temp++;

        id1++;
     }
}

void Triple()
{
    int id1=0, cnt=0;
    temp++;
    printf("TRIPLE\n");
    
    while(cnt<ind)
    {
       printf("%d:\t", id1);
       
       printf("%c\t", code[cnt].opr);
       
       if(isalpha(code[cnt].opd1))
          printf("%c\t", code[cnt].opd1);
       else
          printf("%c\t", temp);
       
       if(isalpha(code[cnt].opd2))
         if(id1==0)  printf("%c\t", code[cnt].opd2);
         else printf("%d:\t", id1-1);
       else
          printf("%c\t", temp);
       
       printf("\n");
        cnt++;
        temp++;

        id1++;
     }
}    

int main()
{
   printf("Enter the expression\n");
   yyparse();
   temp = 'A';
   ThreeAddressCode();
   Quadruple();
   Triple();
   
}

 

     
        
     
          
          
          
          
          
          
          

