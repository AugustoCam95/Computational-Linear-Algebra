function xout=jacobi(A,b)
  [l,c]=size(A);
  
  D=diag(diag(A));
  L=-1*(D-tril(A));
  U=-1*(D-triu(A));
  invD=diag(diag(1/D));
  x=zeros(l,1);
  oldx=x;
  M=D
  N=-(L+U)
  MN=-inv(D)*(L+U)
  for i=1:1000
    if (max(abs(x-oldx))<0.001) then
      xout=x;
    else
      oldx=x;
      x=inv(D)*b-inv(D)*(L+U)*x;
      
    end
  end
  M=D
  N=-(L+U)
  MN=-inv(D)*(L+U)
  disp("M:\n")
  disp(M)
    disp("N:\n")
  disp(N)
    disp("M^-1N:\n")
  disp(MN)
endfunction
//M=D.N=-(L+U).M^-1*N=-D^-1(L+U)
