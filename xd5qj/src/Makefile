all: turtle eins.ps

eins.ps: eins.tlt turtle
	./turtle < eins.tlt > eins.ps

lex.yy.o:  lex.yy.c turtle_xd5qj.tab.h symtab.h
	gcc -c lex.yy.c

lex.yy.c: turtle_xd5qj.l
	flex turtle_xd5qj.l
	
turtle_xd5qj.tab.h: turtle_xd5qj.y
	bison -d turtle_xd5qj.y

turtle_xd5qj.tab.c: turtle_xd5qj.y
	bison -d turtle_xd5qj.y

turtle_xd5qj.tab.o: turtle_xd5qj.tab.c symtab.h
	gcc -c turtle_xd5qj.tab.c

turtle: turtle_xd5qj.tab.o lex.yy.o symtab.c
	gcc lex.yy.o turtle_xd5qj.tab.o symtab.c -lfl -o turtle

clean:
	rm -f turtle lex.* turtle_xd5qj.tab.*

