function m=ANNM(Layer,inputt,output)
%intialize input
%weights
O=1:10;
S=1:10;
E=784:1;

for it=1:11
index=1;

    for i=1:10
Layer.perceptron(index).input=inputt;

%compute each outpot
O(index)=sigmoid(dot(Layer.perceptron(index).weights,Layer.perceptron(index).input));
E=dot(-((output(i)-O(index))*output(i)*(1-output(i))),Layer.perceptron(index).input);
Layer.perceptron(index).weight=Layer.perceptron(index).weight-0.00005*E;
Layer.perceptron(index).input=inputt;
%compute each outpot
O(index)=sigmoid(dot(Layer.perceptron(index).weights,Layer.perceptron(index).input));
O
index=index+1;
    end

end    
end
