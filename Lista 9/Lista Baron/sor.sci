function xout=sor(A,b)
  [l,c]=size(A);
  D=diag(diag(A));
  L=-1*(D-tril(A));
  U=-1*(D-triu(A));
  invD=diag(diag(1/D));
  w=1.2
  x=ones(l,1);
  oldx=ones(l,1);
  for i=1:100
    if (max(abs(x-oldx))<0.001)

        xout=x;
    else
      oldx=x;
      x=-inv(D+w*L)*((w-1)*D+w*U)*oldx+w*(inv(D+w*L))*b
      
    end
  end
  
Mw = L + (1/w)*D 
Nw = (1-1/w)*D+ U
   disp("Mw:\n")
  disp(Mw)
    disp("Nw:\n")
  disp(Nw)
    
endfunction
