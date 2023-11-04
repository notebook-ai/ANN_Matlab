% Load the data points into Workspace
data = readmatrix('two.xlsx');
x1 = data( : , 1)';
x2 = data( : , 2)';
t = data( : , 3)';
p = [x1; x2];


% Construct a two-input, single-output perceptron
net = newp(minmax(p), 1);


% Train the perceptron network with training inputs (p) and targets (t)
net = train(net, p, t);

% Simulate the perceptron network with same inputs again
a = sim(net, p);

