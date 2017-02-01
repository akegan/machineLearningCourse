function idx = findClosestCentroids(X, centroids)
%FINDCLOSESTCENTROIDS computes the centroid memberships for every example
%   idx = FINDCLOSESTCENTROIDS (X, centroids) returns the closest centroids
%   in idx for a dataset X where each row is a single example. idx = m x 1 
%   vector of centroid assignments (i.e. each entry in range [1..K])
%

% Set K
K = size(centroids, 1);

% You need to return the following variables correctly.
idx = zeros(size(X,1), 1);

% ====================== YOUR CODE HERE ======================
% Instructions: Go over every example, find its closest centroid, and store
%               the index inside idx at the appropriate location.
%               Concretely, idx(i) should contain the index of the centroid
%               closest to example i. Hence, it should be a value in the 
%               range 1..K
%
% Note: You can use a for-loop over the examples to compute this.
%
for i = 1:size(X, 1)
    %fprintf('i = %d \n \n', i);
    min_dist = (X(i, :) - centroids(1, :))*(X(i, :) - centroids(1, :))'; % initialize distance w/ first centroid
    c_min = 1; % initialize to 1st centroid
    %fprintf('c = %d \n \n', c_min);
    %fprintf('dist: %0.5f \n', min_dist);
    for c = 2:K
        %fprintf('c = %d \n \n', c);
        dist = (X(i, :) - centroids(c, :))*(X(i, :) - centroids(c, :))';
        %size(dist)
        %fprintf('dist: %0.5f \n', dist);
        if dist < min_dist
            min_dist = dist;
            c_min = c;
        end   
    end
    %fprintf('c_min: %d\n', c_min);
    idx(i) = c_min;
end







% =============================================================

end

