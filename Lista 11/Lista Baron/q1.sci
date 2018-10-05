function [x,niter]=q1(A,b,e)
    
    //dimensão da matriz A
    [l,c]=size(A)
    
    //Montando a matriz M para o pré-condicionador de Jacobi
    d=diag(A)
    M=zeros(l,c)
    for i=1:l
        M(i,i)=d(i)
    end
    
    niter=0
    
    //x inicia como vetor de zeros
    x=zeros(l,1)
    //r=b, pois A*x=0 dado x=(0,0,0)'
    r=b-A*x    
    //p recebe (M^-1)*r
    p=inv(M)*r
    //lambda é o produto interno <r',r>
    gama=r'*p
    while(gama>e)
        y = A*p
        
        alfa = gama/((y')*p)
        
        x = x+alfa*p  
        
        r = r-alfa*y
        
        s = M\r
        
        betaa = r'*s
        
        p = s + (betaa/gama)*p
        
        gama = betaa
        
        niter=niter+1
     end
endfunction
