 /*Alunos*/
 /*Rafael de Medeiros Nobre - 200026488*/
 /*Felipe Alef Pereira Rodrigues - 190042532*/
 /*Pedro Vitor Augusto de Jesus - 200073249 */

%{
#include <stdio.h>
int validDateCount = 0;
%}

DIGIT [0-9] 
TRINTA_DAY_MONTH (01|03|04|05|06|07|08|09|10|11|12) 
UM_A_TRINTA (0[1-9]|[12][0-9]|30)
UM_A_VINTEOITO (0[1-9]|1{DIGIT}|2[0-8])
TRINTAUM_DAY_MONTH (0[13578]|1[02])
YEAR (19[0-9]{2}|20[0-1][0-9]|202[0-2]|2023)
YEAR_BISSEXTO (19(([2468][048]|[02468][48])|[13579][26])|20(([0][048]|[2][0])|[1][26]))
SEP "/"

DATE (({UM_A_TRINTA}{SEP}{TRINTA_DAY_MONTH}{SEP}{YEAR}|31{SEP}{TRINTAUM_DAY_MONTH}{SEP}{YEAR})|{UM_A_VINTEOITO}{SEP}02{SEP}{YEAR}|29{SEP}02{SEP}{YEAR_BISSEXTO})
WS [ \t\n]+


%%
{DATE}   { validDateCount++; }
{WS}     { /* Ignore whitespace, tabs, and line breaks */ }
.        { /* Ignore whitespace, tabs, and line breaks */ }
%%

int main(void) {
    yylex();
    printf("%d\n", validDateCount);
    return 0;
}

int yywrap(){
    return 1;
}