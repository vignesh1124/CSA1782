initial_state(state(at_door, on_floor, at_window, has_not_eaten)).
final_state(state(_, _, _, has_eaten)).

action(state(at_window, on_floor, at_window, has_not_eaten), grasp,
       state(at_window, on_floor, at_window, has_eaten)).

action(state(at_door, on_floor, Box, HB), walk_to_window,
       state(at_window, on_floor, at_window, HB)) :- 
    _Dummy = Box. 

solve(Actions) :-
    initial_state(S0),
    solve_from(S0, Actions).

solve_from(S, []) :- 
    final_state(S).

solve_from(S0, [Action|Rest]) :-
    action(S0, Action, S1),
    solve_from(S1, Rest).
