% Facts
has_wings.
cannot_fly.

% Rules
can_fly :- 
    has_wings, 
    \+ cannot_fly. 

bird(penguin) :- cannot_fly.
bird(eagle)   :- can_fly.

% Backward Chaining Inference
infer(X) :- bird(X).
