

function [Q,T] =Questao4(A)
    [l,c] = size(A)
    Q = eye(l,l)
    p = min(l,c)
    T = A
    for i=1:p
        for j=i+1:l
            //calcular o coseno e o seno, em seguida armazena nas variáveis cosen e sen
            cosen = T(i,i)/ (sqrt(T(i,i)^2 + T(j,i)^2 ))
            sen = T(j,i)/(sqrt(T(i,i)^2 + T(j,i)^2))
           //Inicia a Matriz R(Gt) igual a identidade
            Gt = eye(l,l)
            
            //Monta a matriz R(Gt)
            Gt(i,i) = cosen
            Gt(i,j) = sen
            Gt(j,i) = -sen
            Gt(j,j) = cosen
            
            //Operações para encontrar a T e Q'
            T=Gt*T
            Q=Gt*Q
        end    
    end
    //Transpoem a Q e retorna
    Q=Q'
 

endfunction
