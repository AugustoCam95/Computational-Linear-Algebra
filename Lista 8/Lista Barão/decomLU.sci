function [L,U]=decomLU(A)
    
    [l,c]=size(A)
    
    if ( l == c) then
        //condicional para entrar no laço que é a matrix ser do tipo quadrada
        cont_1=1
        
        L = eye(l,c)
        //inicializa a L sendo matrix Identidade já que sua diagonal é toda preenchida com 1's
        U = zeros(l,c)
        //inicializa a U sendo uma matrix de zeros com as mesmas dimenssões de A
        //Pivoteamento da matrix A
        for i=2:l
            cont_2 = i
            while cont_2<=l
        
                Maux = A(cont_2, cont_1)/ A(i-1,i-1)
                
                L(cont_2,cont_1)=Maux
                //L recebe os elementos que ficarão abaixo da diagonal principal 
                    for j=1:c
                        A(cont_2,j)= A(cont_2,j)-(Maux*A(i-1,j))
                    end
        
                cont_2 = cont_2+1
        
            end
    
            cont_1 = cont_1+1
    
        end

        U = A(:, 1:c)
        //U recebe a matrix A resultante
    end

endfunction
