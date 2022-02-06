function cout=squareReshape(c)
%c=1d matrix, cout=square matrix
 r = ceil(sqrt(length(c))); 
 mn=ceil(numel(c)/r)*r; 
 c2=zeros(mn,1); c2(1:length(c))=c;
 cout = reshape(c2,[ceil(numel(c)/r),r]);
 cout=mat2gray(cout);
% if isinteger(cout)==0
%     cout=im2uint16(cout);
% end
end


