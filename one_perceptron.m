% The example below illustrates how to create a two-input, single-ouput 
% perceptron. The input values range from -2 to 2.

data  = [ -2 2; -2 2];

% Creating a perceptron
net = newp(data, 1);


% Checking properties and values of Input Weights
net.inputWeights{1,1}; % properties
net.IW{1,1}; % values


% Checking properties and values of bias
net.biases{1}; % properties
net.b{1}; % values


% Note that initial weights and biases are initialized to zeros using “initzero”
net.inputWeights{1,1}.initFcn;
net.biases{1}.initFcn;


% To compute the output of perceptron from input vectors [p1; p2], use the “sim” command  
p = [ [2; 2] [1; -2] [-2; 2] [-1; 1] ]; 
a = sim(net, p)
view(net)







