%{
#include <stdio.h>
int dates = 0;
%}

digit           [0-9]
day             [0-2]{digit}|3[0-1]
month           0{digit}|1[0-2]
year            19{digit}{digit}|20[0-1]{digit}|202[0-3]
date            {day}/{month}/{year}

%%

{date}  { 
    printf("Date found: %s\n", yytext); 
    dates++;
}
.|\n    { }

%%

int main(void) {
    yylex();
    printf("Total dates found: %d\n", dates);
    return 0;
}
