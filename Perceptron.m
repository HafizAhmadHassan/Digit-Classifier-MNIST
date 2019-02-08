classdef Perceptron < handle
   properties
      input
      weights
      output;
   end
   methods
      function obj = Perceptron()
      obj.weights=1:784;
      obj.weights=reshape(obj.weights,[784 1]);
      obj.weights(:)=0;
      obj.input=1:784;
      obj.input(:)=0;
      
      obj.input=reshape(obj.input,[784 1]);
      
      obj.output=0;
      end
       function obj = SetInput(img)
      
      obj.input=img;
      
      end
      
      end
end