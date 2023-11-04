% fetch data from excel file
img1 = readmatrix('zir.xlsx',  'Sheet','img_one');
img2 = readmatrix('zir.xlsx',  'Sheet','img_two');
img3 = readmatrix('zir.xlsx',  'Sheet','img_three');
img4 = readmatrix('zir.xlsx',  'Sheet','img_four');
timg1 = readmatrix('zir.xlsx', 'Sheet', 't_img_1');
timg2 = readmatrix('zir.xlsx', 'Sheet', 't_img_2');
timg3 = readmatrix('zir.xlsx', 'Sheet', 't_img_3');


% set inputs value and target
p = [img1 img2 img3 img4];
t = [0 1 0; 1 0 1; 1 0 1; 0 1 0];


% Create the linear network
net = newlin(minmax(p'), 1);


% Train the linear network
net.trainParam.goal = 10e-5; % training stops if goal achieved
net.trainParam.epochs = 500; % training stops if epochs reached
net = train(net, p, t); 


% Testing the performance of the trained linear network
a = sim(net, p);