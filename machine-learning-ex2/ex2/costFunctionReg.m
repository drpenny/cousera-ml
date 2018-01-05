function [J, grad] = costFunctionReg(theta, X, y, lambda)
%COSTFUNCTIONREG Compute cost and gradient for logistic regression with regularization
%   J = COSTFUNCTIONREG(theta, X, y, lambda) computes the cost of using
%   theta as the parameter for regularized logistic regression and the
%   gradient of the cost w.r.t. to the parameters. 

% Initialize some useful values
m = length(y); % number of training examples

% You need to return the following variables correctly 
J = 0;
grad = zeros(size(theta));

% ====================== YOUR CODE HERE ======================
% Instructions: Compute the cost of a particular choice of theta.
%               You should set J to the cost.
%               Compute the partial derivatives and set grad to the partial
%               derivatives of the cost w.r.t. each parameter in theta

%lambda = 0;
K = X*theta;
% m x 1
H = 1 ./ (1 + exp(-K));
% m x 1
I = log(H);
% m x 1
L = log(1-H);
% m x 1
thetasq = theta .^2;
thetasq(1)=0;
J = sum((-y' * I) - ((1 - y)' * L));
J = J / m + (lambda/(2*m)) * sum(thetasq);
% 3xm * mx1
thetareg = (lambda / m) * theta;
thetareg(1)=0;
grad = X'*(H - y);
grad = (grad / m) + thetareg;
% not theta 0 ?



% =============================================================

end
