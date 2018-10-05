function [x,niter]=sor(A,b,w)
  [l,c]=size(A);
  
  D=diag(diag(A));
  L=-1*(D-tril(A));
  U=-1*(D-triu(A));
  
  
  niter=0  
  x=zeros(l,1);
  crit=1
  normb = norm(b);
  
  while(0.00000001 < crit)
      niter=niter+1
      x=-inv(D+w*L)*((w-1)*D+w*U)*x+w*(inv(D+w*L))*b
      crit = norm((A * x - b) / normb);
  end
  

    
endfunction
