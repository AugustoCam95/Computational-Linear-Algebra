function [Q,T]=Householder(A)
     //extrai dimensoes
     [l,c] = size(A)
     p=min(l,c)
     Q=eye(l,l)
     e = eye(l,l)
     for k=1:p-1
         
         x=A(k:l,k)
     
        v = x+(sign(x(1)))*norm(x)*e(1:l-k+1,1)
        v = v/norm(v)
        
        P = eye(l-k+1, l-k+1) - 2*(v*v')/(v'*v)
        Qk= [eye(k-1,k-1),zeros(k-1,l-k+1);zeros(l-k+1,k-1),P]
        
        A=Qk*A
        
        Q=Qk*Q
     end
     Q=Q'
     T=A
endfunction
