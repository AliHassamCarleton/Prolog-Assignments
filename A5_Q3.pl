/*COMP3007- A5
 *Due: April.11.2018
 *Ali Hassam 100972357
 */

 /*Assignment 5- Question 3*/


% (a) [2 marks] Write a predicate to find the last element of a list. You may not use the built-in last predicate in your answer.

lastEle(X,[H|T]):-length(T,L),L==0,X=H.
lastEle(X,[H|T]):-lastEle(X,T).


/* Testing
?- lastEle(X,[how,are,you,today]).
X = today 
*/


% (b) [3 marks] Write a predicate gradeMap(L,R), where L is a list of percentage grade values (integers from 0 to 100), 
% and R is a list of corresponding grade letters (a-f, no +/- s). 
% You may assume the grade list contains the correct types. 

gradeMap([],[]).
gradeMap([H|T],[f|R]):-50>H,H>=0,gradeMap(T,R).
gradeMap([H|T],[d|R]):-H<60,H>=50,gradeMap(T,R).
gradeMap([H|T],[c|R]):-H<70,H>=60,gradeMap(T,R).
gradeMap([H|T],[b|R]):-H<80,H>=70,gradeMap(T,R).
gradeMap([H|T],[a|R]):-101>H,H>=80,gradeMap(T,R).


/* Testing
?- gradeMap([0, 16, 49, 55, 63, 78, 92], R).
R = [f, f, f, d, c, b, a]
*/


% (c) [3 marks] Write a predicate split(List,Pivot, L1, L2) that succeeds when the lists L1 and L2 are the result of splitting the elements of list List depending on the value of Pivot. 
% Values that are ≤ Pivot go in L1, and values > Pivot go in L2. Your answer may assume that all values in List are numbers.

split([],P,[],[]).
split([H|T],P,[H|L1],L2):-P>=H,split(T,P,L1,L2).
split([H|T],P,L1,[H|L2]):-H>P,split(T,P,L1,L2).


/* Testing
?-split([4,7,1,8,2,9,3],5, L1, L2).
L1 = [4,1,2,3]
L2 = [7, 8, 9].
?-split([4,7,1,8,2,9,3],5, [4,1,2,3], [7, 8, 9]).
True.
*/


% (d) [2 marks] Write a predicate myNextto(X, Y, L), that succeeds when elements X and Y are immediately consecutive elements of a list L. 
% You may not use the built-in nextto predicate in your answer

compareHead(X,[H|T]):-X==H.
myNextto(X,Y,[H|T]):-H==X,compareHead(Y,T).
myNextto(X,Y,[H|T]):-myNextto(X,Y,T).


/* Testing
?- myNextto(a,b, [c,a,b,d]).
Expected Result: True
Result: True.
?- myNextto(a,b, [c,a,d,b]).
Expected Result: False
Result: False
*/


