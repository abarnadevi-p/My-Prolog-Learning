parent(tom, bob).
parent(tom, liz).
parent(bob, pam).
parent(bob, ann).
parent(bob, pat).
parent(pat, jim).

male(tom).
male(bob).
male(jim).

female(pam).
female(ann).
female(pat).
female(liz).

father(X, Y) :-
    parent(X, Y),
    male(X).

mother(X, Y) :-
    parent(X, Y),
    female(X).

grandparent(X, Y) :-
    parent(X, Z),
    parent(Z, Y).

grandfather(X, Y) :-
    grandparent(X, Y),
    male(X).

sibling(X, Y) :-
    parent(Z, X),
    parent(Z, Y),
    X \= Y.