function [J, grad] = costFunction(theta, X, y)
%COSTFUNCTION Compute cost and gradient for logistic regression
%   J = COSTFUNCTION(theta, X, y) computes the cost of using theta as the
%   parameter for logistic regression and the gradient of the cost
%   w.r.t. to the parameters.

% Initialize some useful values
m = length(y); % number of training examples

% You need to return the following variables correctly 
J = 0;
K = 0;
grad = zeros(size(theta));

% ====================== YOUR CODE HERE ======================
% Instructions: Compute the cost of a particular choice of theta.
%               You should set J to the cost.
%               Compute the partial derivatives and set grad to the partial
%               derivatives of the cost w.r.t. each parameter in theta
%
% Note: grad should have the same dimensions as theta
%


K = X*theta;
% m x 1
H = 1 ./ (1 + exp(-K));
% m x 1
I = log(H);
% m x 1
L = log(1-H);
% m x 1
J = sum((-y' * I) - ((1 - y)' * L));
J = J / m;
% 3xm * mx1
grad = X'*(H - y);
grad = grad / m;




% =============================================================

end
