function m=Convert(Trainlabels)
v=[0 0 0 0 0 0 0 0 0 0];
indexj=1;
O=60000:10;
for j=1:60000
p=Trainlabels(indexj);
v(p+1)=1;
k=1;
for i=1:10
O(indexj,k)=v(k);
k=k+1;
end
v(p+1)=0;
indexj=indexj+1;
end
m=O;
end