function [x,niter]=gaussseidel(A,b)
  [l,c]=size(A);
  D=diag(diag(A));
  L=-1*(D-tril(A));
  U=-1*(D-triu(A));
  
  niter=0
  x=zeros(l,1);
  crit=1
  normb = norm(b);
  while(0.00000001<crit)
      niter=niter+1
      x = inv(D)*b-inv(D)*L*x-inv(D)*U*x;
      crit = norm((A * x - b) / normb);
  end
   
endfunction

