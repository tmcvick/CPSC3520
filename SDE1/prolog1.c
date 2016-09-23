#include "lex.yy.c"
#include "yyerror.c"
#include "prolog1.tab.c"
int main()
{
	yyparse();
	print();
	return 0;
}
