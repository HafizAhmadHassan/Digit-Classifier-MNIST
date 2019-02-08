function o=mainexecute()
%----
TrainImages=loadMNISTImages('MnistData/train-images.idx3-ubyte');
Trainlabels=loadMNISTLabels('MnistData/train-labels.idx1-ubyte');


H=Convert(Trainlabels);
L=Layer();
%resulted layer
LR=Layer();
index=1;
%i have to trained 1 number   I know i can do it with loop but not doing :P
for u=1:10
P=ANNMBB(L.perceptron(index),[1 0 0 0 0 0 0 0 0 0 0],TrainImages,H,index-1,6000);
LR(1).perceptron(index)=P;
index=index+1;
end

o=LR;

end