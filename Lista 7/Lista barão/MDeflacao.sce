function [B1]= MDeflacao(A,lambda,Vx)
    
    
    [l,c]=size(A)
    //tira as dimensões da matriz A
    I=eye(l,l)
    // cria uma matriz identidade I, a partir das dimenssões de  A
    x =Vx/(norm(Vx))^2
    //calcula o X a partir do autovetor inserido
    
    B1=A*(I-Vx*x')
    //Calcula e retorna a matriz B   
   
    
    
endfunction
