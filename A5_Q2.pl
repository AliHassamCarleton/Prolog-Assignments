/*COMP3007- A5
 *Due: April.11.2018
 *Ali Hassam 100972357
 */

/*Assignment 5- Question 2*/

%Actor info (given)

actor(jonny, depp, gender(male)).
actor(bruce, willis, gender(male)).
actor(glenn, close, gender(female)).
actor(orlando, bloom, gender(male)).
actor(jennifer, lawrence, gender(female)).
actor(sean, bean, gender(male)).
actor(angelina, jolie, gender(female)).
actor(keira, knightley, gender(female)).
actor(benedict, cumberbatch, gender(male)).
actor(james,mcavoy, gender(male)).
actor(robin, williams, gender(male)).
actor(emilia, clarke, gender(female)).
actor(ryan, reynolds, gender(male)).
actor(chris, pratt, gender(male)).
actor(ryan, gosling, gender(male)).
actor(robin,wright, gender(female)).
actor(karen, gillan, gender(female)).
actor(kirsten, dunst, gender(female)).
actor(dwayne, johnson, gender(male)).
actor(jack, black, gender(male)).
actor(tobey, maguire, gender(male)).
actor(keanu, reeves, gender(male)).

%Movie info (given)

movie(year(2003), title([pirates,of,the,carribean]), cast([actor(jonny, depp), actor(keira, knightley), actor(orlando, bloom)])).
movie(year(2014), title([guardians, of, the, galaxy]), cast([actor(chris, pratt), actor(karen,gillan) ])).
movie(year(1988), title([die,hard]), cast([actor(bruce, willis)])).
movie(year(2001), title([lord,of,the,rings]), cast([actor(orlando, bloom), actor(sean, bean)])).
movie(year(2016), title([xmen, apocalypse]), cast([actor(jennifer,lawrence), actor(james, mcavoy)])).
movie(year(2014), title([the,imitation,game]), cast([actor(benedict, cumberbatch), actor(keira, knightley)])).
movie(year(2012), title([the,hunger,games]), cast([actor(jennifer,lawrence)])).
movie(year(2016), title([deadpool]), cast([actor(ryan, reynolds)])).
movie(year(1995), title([jumanji]), cast([actor(robin, williams), actor(kirsten, dunst)])).
movie(year(2017), title([jumanji,welcome,to,the,jungle]), cast([actor(dwayne,johnson),actor(karen,gillan),actor(jack,black)])).
movie(year(2003), title([spider,man]), cast([actor(tobey, maguire), actor(kirsten,dunst)])).
movie(year(2017), title([blade,runner,2049]), cast([actor(ryan,gosling), actor(robin,wright)])).


% QUERIES

% a. ?-movie(year(Year),title(Title),_),Year < 2012.

% b. ?-actor(First,Last,gender(GENDER)), GENDER = female

% c. ?-movie(_,title, cast(actor)), member(actor(jennifer,lawrence),Z).

% d. ?-movie(_,title(Title),_),member(of,Title),member(the,Title).

% e. ?-movie(_,title(Title), cast(Cast)), member(actor(robin, _), Cast).

% f. ?-movie(_,title(Title1),cast(Cast1)), movie(_,title(Title2),cast(Cast2)), Title1 \= Title2, member(X,Cast1), member(X,Cast2).

% g. ?-movie(_,_,cast(Cast)), member(actor(orlando,bloom),Cast) , member(X,Cast), X \= actor(orlando,bloom).

% h. ?-movie(year(OldestYear), Title, _), not((movie(year(Year), _, _), OldestYear>Year)).

% i. ?-actor(First, Last, ), not((movie(, _, cast(NoCast)), member(actor(First, Last), NoCast))).