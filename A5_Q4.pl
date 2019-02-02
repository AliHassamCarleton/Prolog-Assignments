/*COMP3007- A5
 *Due: April.11.2018
 *Ali Hassam 100972357
 */

 /*Assignment 5- Question 4*/


%(a) [1 mark] Write a predicate myAppend(L1,L2,L3) to append 2 lists (order is important, you may not use the built in append). E.g.,

myAppend([],L,L).
myAppend([L|T],L2,[L|T3]):- myAppend(T,L2,T3).


/* Testing
?- myAppend([a,b],[c,d],L).
Expected Result: L = [a,b,c,d].
Result: L = [a,b,c,d].
*/


%(b) [1 mark] Using your definition of myAppend, write a predicate myFirst(X,L) that is true if X is the first item in L.

myFirst(X,[H|T]):-myAppend(_,_,[H|T]),H=X.


/* Testing
?- myFirst(2,[2,3]).
Expect Result: True.
Result: True.
*/


%(c) [2 mark] Rewrite the predicate myLast(X,L) from the previous question using append.

myLast(X,[H|T]):- myAppend(_,_,[H|T]),length(T,L),L==0,X=H.
myLast(X,[H|T]):-myLast(X,T).


/*Testing
?- myLast(ali,[its,your,boy,ali]).
Expect: True.
Actual: True.

?- myLast(X,[how,are,you,buddy]).
Expect Result: X = buddy.
Result: X = buddy.
*/


%(d) [3 marks] Rewrite the predicate myNextto(X,Y,L) from the previous question using append.

myNextto(X,Y,L):- myAppend(_,[X,Y|_],L).


/* Testing
?- myNextto(2,3,[2,3,4,5]).
Expected Result: True.
Result: True.
*/


%(e) [3 marks] Write a recursive predicate myReverse(L1,L2) that succeeds when the result of reversing the elements of list L1 is the list L2. 
%Your answer should use append, and may not make use of the built in reverse predicate.

(myReverse([],_)).
myReverse([H|T],NEW):- myReverse(T,OLD), myAppend(OLD,[H],NEW).

/* Testing
?- myReverse([e,d,c,b,a],L).
Expected Result: L = [a,b,c,d,e].
Result: L = [a,b,c,d,e].

?- myReverse([],L).
Expected Result: False.
Result: False.
*/
