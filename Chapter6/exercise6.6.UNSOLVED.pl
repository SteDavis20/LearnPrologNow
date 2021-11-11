% Exercise 6.6
% Here is an exercise for those of you who like logic puzzles.

% There is a street with three neighbouring houses that all have a different colour, namely:
% red, blue, and green. 

% People of different nationalities live in the different houses and they all have a different pet.

% Here are some more facts about them:

% The Englishman lives in the red house.
% The jaguar is the pet of the Spanish family.
% The Japanese lives to the right of the snail keeper.
% The snail keeper lives to the left of the blue house.

% Who keeps the zebra?
% Don’t work it out for yourself: 
% define a predicate zebra/1 that tells you the nationality of the owner of the zebra!

% Hint:
% Think of a representation for the houses and the street. 
% Code the four constraints in Prolog. 
% You may find member/2 and sublist/2 useful.

nationality(English).
nationality(Spanish).
nationality(Japanese).

livesIn(englishman, redHouse).
isPetOf(jaguar, spanish).
isLeftNeighbourOf(snailKeeper, japanese).
isRightNeighbourOf(blueHouse, snailKeeper).