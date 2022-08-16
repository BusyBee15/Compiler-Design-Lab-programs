### This repository contains the list of programs which I did as part of the COMPILER DESIGN course in 6th semester.

## List of programs


1. a) Write a LEX program to count number of words, lines, characters and whitespaces in a given paragraph <br />
   b) Write a YACC program to recognize strings of the form a<sup>n</sup>b<sup>n+m</sup>c<sup>n</sup>, n,m>=0.

2. a) Write a LEX program to count number of Positive and Negative integers and Positive & Negative fractions. <br />
   b) Write a YACC program to validate and evaluate a simple expression
involving operators +,- , * and /.

3. a) Write a LEX program to count the number of comment lines  in  a  C  Program.  Also eliminate them and copy that program into a separate file.<br />
   b) Write a YACC program to recognize a nested (minimum 3 levels) FOR loop statement for C language

4. a) Write a LEX program to recognize and count the number of identifiers, operators and keywords in a given input file. <br />
   b) Write a YACC program to recognize nested IF control statements (C language) and display the number of levels of nesting.

5. Write a C program to implement a Shift Reduce parser for a given grammar
and generate the parsing table by parsing the given string.

6. Write a YACC program that reads the C statements for an input file and convert them in quadruple three address intermediate code.

7. Write a YACC program that identifies Function Definition of C language

8. Write a YACC program that generates target Code for valid Arithmetic Expression.

<br />

### Execution

I have used ubuntu to run my files. 
First install lex and yacc, and the command for the same is

```
sudo apt install flex bison
```

Clone the repository, 
inside the folder you can see all the programs folders

Open which ever program folder you want, 
right click and open the terminal and execute these commands in order

##### Steps to execute lex programs

```
lex filename.l
```

```
cc lex.yy.c -ll
```
```
./a.out
```

##### Steps to execute yacc programs

```
lex filename.l
```
```
yacc -d filename.y
```
```
cc lex.yy.c y.tab.c -ll
```
```
./a.out
```

