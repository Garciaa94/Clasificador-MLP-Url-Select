% Loading database of features 
load db1.mat

% Loading input for the MLP
input = db1(:,1:2)
input=input'

% Loading the class (target) for the MLP. This data is decimal
target=db1(:,3)

% Converting target form decimal to binary
target_ready =[];
for (i =1:size(target))
    % function for converting decimal to binary
    binario=Decimal2Binary(target(i));
    
    % Setting binary of lenght 4, ie., 1 in decimal is 00001 in banary
    completebinary=[]
    
    for (i=length(binario):3)
        completebinary = [completebinary, 0]
    end
    completebinary = [completebinary, binario;]
    target_ready= [target_ready; completebinary]
end
% Configuring data according the MLP
 target_ready_ = target_ready'

% Training the MLP
net = newff(minmax(input), [4 4], {'tansig', 'tansig'}, 'trainlm')
net = train(net,input, target_ready_)
% predicción
prediction=sim(net,input)


