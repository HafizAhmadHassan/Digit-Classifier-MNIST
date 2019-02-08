function perceptron=ANNMBB(p,label,Trainimages,Trainlabels,PNum,epochs)
% calculate O
%perceptron number +1 because in start with 0-9
% calculate Constant term output (D-O)*O(1-O)
D=label(PNum+1);
LearningRate=0.05;
    X=1:60000;

    for u=1:epochs
        F=0;

        indexi=1;
        X2=Trainimages;
    for i=1:60000
        p.input=Trainimages(:,indexi);
        G=dot(p.input,p.weights);
        p.output=sigmoid(G);
      
        %D=Trainlabels(indexi,(PNum+1));
       
        X(indexi)=(D-p.output)*p.output*(1-p.output);
        Q=X(indexi)*(Trainimages(:,indexi));        
        X2(:,indexi)=Q;
        indexi=indexi+1;
    end
    %sum row wis daltaE
    DE=sum(X2,2);
 
    F=norm(DE);

    p.weights(:)=p.weights(:)-LearningRate*DE;
  %p.weights=reshape(p.weights,[1 784]);
    if(F<=0.005)
       
       break; 
    end

    end
perceptron=p;
end

