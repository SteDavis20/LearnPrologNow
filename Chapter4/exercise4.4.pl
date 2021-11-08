% Write a predicate swap12(List1,List2) which checks whether List1 is identical to List2,
% except that the first two elements are exchanged.

% Example:
% swap12([3, 4, 5, 6, 7], [4, 3, 5, 6, 7]) = true

swap12([H, H2 | T], [H2, H | T]).