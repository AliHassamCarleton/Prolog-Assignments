/*COMP3007- A5
 *Due: April.11.2018
 *Ali Hassam 100972357
 */

 /*Assignment 5- Question 5*/

%(a) [1 mark] Write a predicate list(L) that succeeds if the argument L is a list. 
%(You may not use the built-in is_list predicate for this).

list([_|_]).


/* Testing
?- list([1,2,3]).
Expected Result: True.
Result: True.
*/

%(b) [4 marks] Write a predicate called treeFlat(T,L) that succeeds if the tree T (nested list) contains the same elements as the (flat) list L. 
%You may not use the built-in flatten predicate in your answer.


treeFlat(T, L) :-
	flattenList(T, L, []).
	
flattenList([], E, E) :- !.
flattenList([H|T], E, B) :-
	flattenList(H, E, B1),
	flattenList(T, B1, B).

flattenList(OGTerm, [OGTerm|B], B).


/*Testing
?- treeFlat([1,[2,3],[[4,[5]],6]],[1,2,3,4,5,6]).
Expected Result: True.
Result: True.

?- treeFlat([1,[2,3],[[4,[5]],6]], L).
Expected Result: L = [1,2,3,4,5,6].
Result: L = [1,2,3,4,5,6].
*/


%(c) [2 marks] Write a predicate treeSum(T,S) that succeeds if the sum of all elements in the tree T equals S.

treeSum(T, S):- treeFlat(T, K), sumList(K, S).

sumList([], 0).
sumList([H|T], S):- not(number(H)), sumList(H, S2),sumList(T, S1), S is S2+S1.
sumList([H|T], S):- number(H), sumList(T, S1), S is H+S1.


/* Testing
?- treeSum([[1,[2,3]],4,[5,6,[7]]], S).
Expected Result: S = 28 
Result: S= 28
*/





