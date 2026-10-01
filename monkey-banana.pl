% Facts

in_room(monkey).
in_room(chair).
in_room(bananas).

dear(monkey).
tall(chair).

can_climb(monkey, chair).
can_push(monkey, chair).

at(monkey, door).
at(chair, window).
at(bananas, center).

% Rules

moved_under(Chair, Bananas) :-
    can_push(monkey, Chair),
    at(Bananas, center).

get_on(monkey, Chair) :-
    can_climb(monkey, Chair).

near(monkey, Bananas) :-
    moved_under(chair, Bananas),
    get_on(monkey, chair).

can_reach(monkey, Bananas) :-
    clever(monkey),
    near(monkey, Bananas).