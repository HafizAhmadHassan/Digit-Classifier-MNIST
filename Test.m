function a=Test(Testimages)
A=mainexecute();
M=1:10;
correct=0;
indexi=1;
for i=1:10000
    indexj=1;
for j=1:10
M(indexj)=sigmoid(dot(Testimages(:,indexi),A.perceptron(indexj).weights));
indexj=indexj+1;
end
if(M(1)==0 && M(2)==1 && M(3)==1 && M(4)==1 && M(5)==1 && M(6)==1 && M(7)==1 && M(8)==1 && M(9)==1 && M(10)==1)
correct=correct+1;
end
indexi=indexi+1;
end
a=(correct/10000)*100;
end


