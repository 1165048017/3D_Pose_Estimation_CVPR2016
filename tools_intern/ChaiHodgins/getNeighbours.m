function neighbourList = getNeighbours(neighbourGraph,indexList)

[row,col] = find(neighbourGraph(:,indexList)); 
% col darf nicht gel�scht werden!

neighbourList = unique(row');