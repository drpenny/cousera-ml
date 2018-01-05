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
pos = find(y==1);
neg = find(y==0);

plot(X(pos,1), X(pos,2), 'k+', 'LineWidth', 2, 'MarkerSize', 7);
plot(X(neg,1), X(neg,2), 'ko', 'MarkerFaceColor', 'y', 'MarkerSize', 7);
ylabel('Exam 2 score');
xlabel('Exam 1 score');

legend('Admitted','Not admitted','Location','northeast')

%annotation('textbox',...
%    [0.7 0.8 0.2 0.1],...
%    'String',{'plotting',['with var =']},...
%    'FontSize',14,...
%    'FontName','Arial',...
%    'LineStyle','-',...
%    'EdgeColor',[0 0 0],...
%    'LineWidth',2,...
%    'BackgroundColor',[0.9  0.9 0.9],...
%    'Color',[0.84 0.16 0]);



% =========================================================================



hold off;

end
