
function [Q, T]=Questao3(A)
     //extrai dimensoes
     [l,c] = size(A)
     //tira o mínimo e armazena em p
     p=min(l,c)
     //inicia a matriz Q como identidade
     Q=eye(l,l)
     //
     e = eye(l,l)
     
     for k=1:p-1
         //pega o vetor coluna de A
         x=A(k:l,k)
        //calcula v a partir da expressão abaixo
        v = x+(sign(x(1)))*norm(x)*e(1:l-k+1,1)
        //normaliza v
        v = v/norm(v)
        //P é a matriz de householder
        P = eye(l-k+1, l-k+1) - 2*(v*v')/(v'*v)
        //Qk é a matriz Q na iteração K
        Qk= [eye(k-1,k-1),zeros(k-1,l-k+1);zeros(l-k+1,k-1),P]
        //iterações
        A=Qk*A
        
        Q=Qk*Q
     end
     Q=Q'
     T=A


endfunction
