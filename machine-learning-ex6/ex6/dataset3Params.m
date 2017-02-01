function [C, sigma] = dataset3Params(X, y, Xval, yval)
%EX6PARAMS returns your choice of C and sigma for Part 3 of the exercise
%where you select the optimal (C, sigma) learning parameters to use for SVM
%with RBF kernel
%   [C, sigma] = EX6PARAMS(X, y, Xval, yval) returns your choice of C and 
%   sigma. You should complete this function to return the optimal C and 
%   sigma based on a cross-validation set.
%

% You need to return the following variables correctly.
C = 1;
sigma = 0.3;

% ====================== YOUR CODE HERE ======================
% Instructions: Fill in this function to return the optimal C and sigma
%               learning parameters found using the cross validation set.
%               You can use svmPredict to predict the labels on the cross
%               validation set. For example, 
%                   predictions = svmPredict(model, Xval);
%               will return the predictions on the cross validation set.
%
%  Note: You can compute the prediction error using 
%        mean(double(predictions ~= yval))
%

C_ops = [.01, .03, .1, 1, 3, 10, 30];
sigma_ops = C_ops;
error = 1; % intialize to 100% error
for c = C_ops
   for sig = sigma_ops
       model= svmTrain(X, y, c, @(x1, x2) gaussianKernel(x1, x2, sig));
       predictions = svmPredict(model, Xval);
       error_temp = mean(double(predictions ~=yval));
       if error_temp < error
           error = error_temp;
           C = c;
           sigma = sig;
       end
   end
end




% =========================================================================

end
