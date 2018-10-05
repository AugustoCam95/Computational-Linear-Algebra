function xout=gaussseidel(A,b)
  [l,c]=size(A);
  D=diag(diag(A));
  L=-1*(D-tril(A));
  U=-1*(D-triu(A));
  x=zeros(l,1);
   disp(D)
   disp(L)
   disp(U)
  oldx=x;
  for i=1:1000
    if (max(abs(x-oldx))<0.001)
        
        xout=x;
    else
       
      oldx=x;
      x = inv(D)*b-inv(D)*L*x-inv(D)*U*x;
      
    end
  end
  M=L+D
  N=-U
  MN=-inv(L+U)*U
   disp("M:\n")
  disp(M)
    disp("N:\n")
  disp(N)
    disp("M^-1N:\n")
  disp(MN)
  disp(spec(MN))
endfunction
//M=L+D.N=-U.M^-1*N=-(L+D)^-1*U
