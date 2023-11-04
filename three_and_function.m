%Modeling Logical AND Function

p = [0 0 1 1; 0 1 0 1]; % training inputs, p = [p1; p2]
t = [0 0 0 1]; % targets

% Create the perceptron
net = newp([0 1; 0 1], 1);


% Train the perceptron with p and t
net = train(net, p, t);


% To test the performance, simulate the perceptron with p
a = sim(net, p);