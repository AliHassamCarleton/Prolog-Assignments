/*COMP3007- A5
 *Due: April.11.2018
 *Ali Hassam 100972357
 */


/*Assignment 5- Question 1*/

female(salima).
female(laila).
female(siham).

male(ali).
male(eddie).
male(karim).
male(febrezio).
male(jennings).

father(karim, ali).
father(karim, eddie).
father(karim, salima).
father(febrezio, laila).
father(ali, jennings).

mother(laila, ali).
mother(laila, eddie).
mother(laila, salima).
mother(siham, laila).

married(karim, laila).
married(febrezio, siham).

and(L,R) :- L,R.
or(L,R) :- L;R.


parent(X,Y) :-(mother(X,Y) ; father(X,Y)).

different(X,Y) :- X\=Y.

is_mother(X) :- female(X),parent(X,_).
is_father(X) :- male(X),parent(X,_).

aunt(X,Y) :- female(X),parent(W,Y),parent(Z,X),parent(Z,W),not(parent(X,Y)),!.
uncle(X,Y) :- male(X),parent(W,Y), parent(Z,X), parent(Z,W),not(parent(X,Y)),!.

sister(X,Y) :- female(X),parent(Z,X), parent(Z,Y),!.
brother(X,Y) :- male(X),parent(Z,X), parent(Z,Y),!.

grandfather(X,Y) :- male(X),parent(X,Z), parent(Z,Y),!.
grandmother(X,Y) :- female(X),parent(X,Z), parent(Z,Y),!.

ancestor(X,Y) :- parent(X,Y); parent(X,Z), ancestor(Z,Y),!.


/*
Question 1 Testing:

Different:
?-different(ali,karim).
Expected Result:true.
Result:true.

Parent:
?-parent(karim,ali).
Expected Result:true
Result:true
?- parent(ali,karim).
Expected Result:false.
Result:false.

Mother:
?- mother(laila,ali).
Expected Result:true.
Result:true
?- mother(ali,laila).
Expected Result:false
Result:false.

Father:
?- father(karim, ali).
Expected Result:true.
Result:true.

Brother:
?- brother(ali, alykan).
Expected Result:true
Result:true
?- brother(karim, ali).
Expected Result:false.
Result:false.

Sister:
?- sister(salima, laila).
Expected Result:false.
Result:false.
?- sister(salima,eddie).
Expected Result:true.
Result:true.

Aunt: 
?- aunt(salima, jennings).
Expected Result:true.
Result:true.
?- aunt(laila, jennings).
Expected Result: false.
Result:false.

Uncle:
?- uncle(eddie, jennings).
Expected Result:true.
Result:true.
?- uncle(febrezio, jennings).
Expected Result: false.
Result:false.

Grandfather:
?- grandfather(karim, jennings).
Expected Result: true.
Result:true.
?- grandfather(eddie, jennings).
Expected Result: false.
Result:false.

Grandmother:
?- grandmother(siham, ali).
Expected Result: true.
Result: true.
?- grandmother(laila, ali).
Expected Result: false.
Result:false.

Ancestor:
?- ancestor(febrezio, jennings).
Expected Result:true.
Result:true.
?- ancestor(eddie, jennings).
Expected Result: false.
Result:false.
*/
