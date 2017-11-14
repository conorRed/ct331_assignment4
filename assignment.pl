% Definitions for isElementInList(El, List)

isElementInList(El, [El|_]).

isElementInList(El, [_|Y]) :- 
	isElementInList(El, Y).


% Definitions for mergeLists(List1, List2, Merged)

% we stop when the first list is empty, and the second list equals the merged list 
% appending empty list with another list gives the list as a result

mergeLists([], List , List).
mergeLists([Item | Tail], List2, [Item | Merged]) :-
      mergeLists(Tail, List2, Merged).

	  
%Definitions for reverseList(List, ReversedList)

%base case reversing an empty list gives an empty list
reverseList([],[]).
%recursive case merging the reverse of the tail with the head
reverseList([H|T],ReversedList) :- reverseList(T, Tempreverse), 
	mergeLists(Tempreverse, [H], ReversedList).


%insertElementIntoListEnd(El, List, NewList)
% base case where tail is now equal to el and list is empty
insertElementIntoListEnd(El,[ ],[El]).
% recursive case. Reconstruct list with new element. Working up from base case.
insertElementIntoListEnd(El,[H|T],[H|NewTail]) :- insertElementIntoListEnd(El,T,NewTail).
