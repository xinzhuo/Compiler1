
%{
#include <stdio.h>
#include "symtab.h"
%}

%union { int i; node *n; double d;}

%token GO TURN VAR JUMP
%token FOR STEP TO DO
%token COPEN CCLOSE
%token SIN COS SQRT
%token <d> FLOAT
%token <n> ID               
%token <i> NUMBER       
%token SEMICOLON PLUS MINUS TIMES DIV OPEN CLOSE ASSIGN

%type <n> decl
%type <n> decllist

%token IF THEN ELSE WHILE LEFTBRACKET RIGHTBRACKET
%token LARGER LARGEREQUAL SMALLER SMALLEREQUAL EQUAL NOTEQUAL

%%
program: head decllist stmtlist tail;

head: { printf("%%!PS Adobe\n"
               "\n"
	       "newpath 0 0 moveto\n"
	       );
      };

tail: { printf("closepath\nstroke\n"); };

decllist: ;
decllist: decllist decl;

decl: VAR ID SEMICOLON { printf("/tlt%s 0 def\n",$2->symbol);} ;


stmtlist: ;
stmtlist: stmtlist stmt ;

stmt: ID ASSIGN expr SEMICOLON {printf("/tlt%s exch store\n",$1->symbol);} ;
stmt: GO expr SEMICOLON {printf("0 rlineto\n");};
stmt: JUMP expr SEMICOLON {printf("0 rmoveto\n");};
stmt: TURN expr SEMICOLON {printf("rotate\n");};

stmt: FOR ID ASSIGN expr 
          STEP expr
	  TO expr
	  DO {printf("{ /tlt%s exch store\n",$2->symbol);} 
	     stmt {printf("} for\n");};

stmt: COPEN stmtlist CCLOSE;	 

expr: expr PLUS term { printf("add ");};
expr: expr MINUS term { printf("sub ");};
expr: term;

term: term TIMES factor { printf("mul ");};
term: term DIV factor { printf("div ");};
term: factor;

factor: MINUS atomic { printf("neg ");};
factor: PLUS atomic;
factor: SIN factor { printf("sin ");};
factor: COS factor { printf("cos ");};
factor: SQRT factor { printf("sqrt ");};
factor: atomic;


atomic: OPEN expr CLOSE;
atomic: NUMBER {printf("%d ",$1);};
atomic: FLOAT {printf("%f ",$1);};
atomic: ID {printf("tlt%s ", $1->symbol);};

stmt: IF OPEN compare CLOSE {printf("{ ");}
         LEFTBRACKET stmt RIGHTBRACKET {printf("} ");}
         endif;

stmt: WHILE {printf("{ ");}
            OPEN compare CLOSE {printf("{} {exit} ifelse \n");}
            LEFTBRACKET stmtlist RIGHTBRACKET {printf("} loop \n");};

endif: {printf("if \n");};
endif: ELSE  {printf("{ ");}
       LEFTBRACKET stmtlist RIGHTBRACKET {printf("} ifelse \n");};

compare: expr EQUAL expr {printf("eq\n");};
compare: expr NOTEQUAL {printf("ne\n");};
compare: expr LARGER expr {printf("gt\n");};
compare: expr LARGEREQUAL expr {printf("ge\n");};
compare: expr SMALLER expr expr {printf("lt\n");};
compare: expr SMALLEREQUAL expr {printf("le\n");};


%%
int yyerror(char *msg)
{  fprintf(stderr,"Error: %s\n",msg);
   return 0;
}

int main(void)
{   yyparse();
    return 0;
}


