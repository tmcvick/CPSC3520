%{
#include<stdio.h>
#include<stdlib.h>
 void print() {
   printf("\nSyntactically incorrect (INVALID) string\n");
  }
%}

%token COLON
%token COMMA
%token LPARENS
%token RPARENS
%token DASH
%token DOT
%token DIGIT
%token QUOTE
%token UPPERCASE
%token LOWERCASE

%% /* Grammar rules */
clauselist : clause {printf("\nThe input string is a SYNTACTICALLY CORRECT Prolog set of clauses.\n");exit(0);}
            | clauselist clause {printf("\nThe input string is a SYNTACTICALLY CORRECT Prolog set of clauses.\n");exit(0);}

;
clause: predicate DOT
        | predicate COLON DASH predicatelist DOT
;
predicatelist: predicate
               | predicatelist COMMA predicate
;
predicate: atom
          | atom LPARENS termlist RPARENS
;
termlist: term
          | termlist COMMA term
;
term: numeral
      | atom
      | variable
;
atom: smallatom
      | QUOTE string QUOTE
;
smallatom: LOWERCASE
           | smallatom character
;
variable: UPPERCASE
          | variable character
;
numeral: DIGIT
         | numeral DIGIT
;
character: LOWERCASE
          | UPPERCASE
          | DIGIT
;
string: character
        | string character
;
