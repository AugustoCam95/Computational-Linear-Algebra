//Código referente a 1 Questão da lista 10
function [x,niter]=GradConj(A,b,e)
    niter=0
    //dimensão da matriz A
    [l,c]=size(A)
    //x inicia como vetor de zeros
    x=zeros(l,1)
    //r=b, pois A*x=0 dado x=(0,0,0)'
    r=b-A*x    
    //p recebe o mesmo valor de r
    p=r
    //lambda é o produto interno <r',r>
    gama=r'*r
    while(gama>e)
        y = A*p
        
        alfa = gama/((y')*p)
        
        x = x+alfa*p  
        
        r = r-alfa*y
        
        betaa = r'*r
        
        p = r + (betaa/gama)*p
        
        gama = betaa
        
        niter=niter+1
     end
            
endfunction

