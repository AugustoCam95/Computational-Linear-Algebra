function [x,niter]=q2(A,b,w,e)
    
    //dimensão da matriz A
    [l,c]=size(A)
    
    
    D=diag(diag(A))
    L=(tril(A)-D)
    
    
    M = w/(2 - w) * ( ( (1/w) * D ) + L )  * inv(D) * (  (1/w) * D + L')
    niter=0
    
    //x inicia como vetor de zeros
    x=ones(l,1)
    
    //r=b, pois A*x=0 dado x=(0,0,0)'
    r=b-A*x    
    
    //p recebe (M^-1)*r
    p=GradConj(M,r,e)
    
    //lambda é o produto interno <r',r>
    gama= r' * p
    
    while(gama>e)
        y = A*p
        
        alfa = gama/((y')*p)
        
        x = x+alfa*p  
        
        r = r - alfa*y
        
        s = GradConj(M,x,e)
        
        betaa = r' * s
        
        p = s + (betaa/gama) * p
        
        gama = betaa
        
        niter=niter+1
     end
endfunction
