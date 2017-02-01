function plotData(X, y)
%PLOTDATA Plots the data points X and y into a new figure 
%   PLOTDATA(x,y) plots the data points with + for the positive examples
%   and o for the negative examples. X is assumed to be a Mx2 matrix.

% Create New Figure
figure; hold on;

% ====================== YOUR CODE HERE ======================
% Instructions: Plot the positive and negative examples on a
%               2D plot, using the option 'k+' for the positive
%               examples and 'ko' for the negative examples.
%

pos_i = find(y==1);
neg_i = find(y==0);

% Plot positive data pts
plot(X(pos_i, 1), X(pos_i, 2),'b+')

% Plot negative data pts
plot(X(neg_i, 1), X(neg_i, 2), 'ro')







% =========================================================================



hold off;

end
