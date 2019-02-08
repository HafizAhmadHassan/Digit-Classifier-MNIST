function m=ANN(Layer,inputt,output)
%intialize input
%weights
O=1:10;
O(:)=0;
S=1:10;
E=784:1;

for it=1:10
index=1;

    for i=1:10
Layer.perceptron(index).input=inputt;

%compute each outpot
O(index)=sigmoid(dot(Layer.perceptron(index).weights,Layer.perceptron(index).input));

S(index)=(output(index)-O(index))*O(index)*(1-O(index));
index=index+1;
end
S
index=1;
for i=1:10
E=(-S(index)*(inputt));
lambra=0.05;
V=lambra*(E);

indexo=1;

for o=1:784
Layer.perceptron(index).weights(indexo)=Layer.perceptron(index).weights(indexo)+V(indexo);
indexo=indexo+1;
end
index=index+1;

end
end


for i=1:10
Layer.perceptron(index).input=inputt;

%compute each outpot
O(index)=sigmoid(dot(Layer.perceptron(index).weights,Layer.perceptron(index).input));
index=index+1;
end


O

m=S;
end