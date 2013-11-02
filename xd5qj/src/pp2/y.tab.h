/* A Bison parser, made by GNU Bison 2.3.  */

/* Skeleton interface for Bison's Yacc-like parsers in C

   Copyright (C) 1984, 1989, 1990, 2000, 2001, 2002, 2003, 2004, 2005, 2006
   Free Software Foundation, Inc.

   This program is free software; you can redistribute it and/or modify
   it under the terms of the GNU General Public License as published by
   the Free Software Foundation; either version 2, or (at your option)
   any later version.

   This program is distributed in the hope that it will be useful,
   but WITHOUT ANY WARRANTY; without even the implied warranty of
   MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
   GNU General Public License for more details.

   You should have received a copy of the GNU General Public License
   along with this program; if not, write to the Free Software
   Foundation, Inc., 51 Franklin Street, Fifth Floor,
   Boston, MA 02110-1301, USA.  */

/* As a special exception, you may create a larger work that contains
   part or all of the Bison parser skeleton and distribute that work
   under terms of your choice, so long as that work isn't itself a
   parser generator using the skeleton or a modified version thereof
   as a parser skeleton.  Alternatively, if you modify or redistribute
   the parser skeleton itself, you may (at your option) remove this
   special exception, which will cause the skeleton and the resulting
   Bison output files to be licensed under the GNU General Public
   License without this special exception.

   This special exception was added by the Free Software Foundation in
   version 2.2 of Bison.  */

/* Tokens.  */
#ifndef YYTOKENTYPE
# define YYTOKENTYPE
   /* Put the tokens into the symbol table, so that GDB and other debuggers
      know about them.  */
   enum yytokentype {
     T_Void = 258,
     T_Bool = 259,
     T_Int = 260,
     T_Double = 261,
     T_String = 262,
     T_Class = 263,
     T_Null = 264,
     T_Extends = 265,
     T_This = 266,
     T_Interface = 267,
     T_Implements = 268,
     T_While = 269,
     T_For = 270,
     T_If = 271,
     T_Return = 272,
     T_Break = 273,
     T_NewArray = 274,
     T_Print = 275,
     T_ReadInteger = 276,
     T_ReadLine = 277,
     T_Switch = 278,
     T_Case = 279,
     T_Default = 280,
     T_Identifier = 281,
     T_StringConstant = 282,
     T_IntConstant = 283,
     T_DoubleConstant = 284,
     T_BoolConstant = 285,
     T_Else = 286,
     T_Then = 287,
     T_Assignment = 288,
     T_Or = 289,
     T_And = 290,
     T_NotEqual = 291,
     T_Equal = 292,
     T_GreaterEqual = 293,
     T_LessEqual = 294,
     T_Unary = 295,
     T_New = 296,
     T_LValue = 297,
     T_Decrement = 298,
     T_Increment = 299,
     T_Call = 300,
     T_Dims = 301
   };
#endif
/* Tokens.  */
#define T_Void 258
#define T_Bool 259
#define T_Int 260
#define T_Double 261
#define T_String 262
#define T_Class 263
#define T_Null 264
#define T_Extends 265
#define T_This 266
#define T_Interface 267
#define T_Implements 268
#define T_While 269
#define T_For 270
#define T_If 271
#define T_Return 272
#define T_Break 273
#define T_NewArray 274
#define T_Print 275
#define T_ReadInteger 276
#define T_ReadLine 277
#define T_Switch 278
#define T_Case 279
#define T_Default 280
#define T_Identifier 281
#define T_StringConstant 282
#define T_IntConstant 283
#define T_DoubleConstant 284
#define T_BoolConstant 285
#define T_Else 286
#define T_Then 287
#define T_Assignment 288
#define T_Or 289
#define T_And 290
#define T_NotEqual 291
#define T_Equal 292
#define T_GreaterEqual 293
#define T_LessEqual 294
#define T_Unary 295
#define T_New 296
#define T_LValue 297
#define T_Decrement 298
#define T_Increment 299
#define T_Call 300
#define T_Dims 301




#if ! defined YYSTYPE && ! defined YYSTYPE_IS_DECLARED
typedef union YYSTYPE
#line 38 "parser.y"
{
    int integerConstant;
    bool boolConstant;
    char *stringConstant;
    double doubleConstant;
    char identifier[MaxIdentLen+1]; // +1 for terminating null
    Decl *decl;
    VarDecl *var;
    FnDecl *fDecl;
    ClassDecl *cDecl;
    InterfaceDecl *iDecl;		
    Type *type;
    List<NamedType*> *nTypeList;
    NamedType *nType;	
    Stmt *stmt;
    List<Stmt*> *stmtList;
    List<VarDecl*> *varList;
    List<Decl*> *declList;
    SwitchStmt *switchStmt;
    CaseStmt *caseStmt;
    List<CaseStmt*> *caseStmtList;
    Expr *expr;
    List<Expr*> *exprList;	  	
    WhileStmt *whileStmt;
    IfStmt *ifStmt;
    ForStmt *forStmt;
    ReturnStmt *returnStmt;
    BreakStmt *breakStmt;
    PrintStmt *printStmt;	    	
}
/* Line 1529 of yacc.c.  */
#line 172 "y.tab.h"
	YYSTYPE;
# define yystype YYSTYPE /* obsolescent; will be withdrawn */
# define YYSTYPE_IS_DECLARED 1
# define YYSTYPE_IS_TRIVIAL 1
#endif

extern YYSTYPE yylval;

#if ! defined YYLTYPE && ! defined YYLTYPE_IS_DECLARED
typedef struct YYLTYPE
{
  int first_line;
  int first_column;
  int last_line;
  int last_column;
} YYLTYPE;
# define yyltype YYLTYPE /* obsolescent; will be withdrawn */
# define YYLTYPE_IS_DECLARED 1
# define YYLTYPE_IS_TRIVIAL 1
#endif

extern YYLTYPE yylloc;
