function [Autovalores]=Francis(A,p)
    // recebe uma matrix A e uma precisão p
    if(argn(2)==2)
        A_1=A
        verificador = 1
        //inicia verificador = 1 para entrar no laço
        funcprot(0);
        while verificador == 1
            
            [Q,R] = qr(A)
            A=R*Q
            // iterações do método de Francis para obter a matrix A_k
            verificador = verifica(A,p)
            //verifica se a precisão foi alcançada
        end
    
        Autovalores=diag(A)
        //Extraimos os autovalores da diagonal da nossa nova matrix A
    end 
    
endfunction
