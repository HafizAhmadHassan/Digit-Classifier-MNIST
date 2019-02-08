classdef OutputVector
   properties
     val;
   end
   methods
      function obj = OutputVector()
      obj.val=1:10;
      obj.val(:)=0;
      end
      
      function r = get_target_output(obj,label)
        obj.val(label+1)=1;
        r=obj.val;
      end
  end
end
