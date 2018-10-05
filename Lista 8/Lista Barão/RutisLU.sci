function [Autovalores]=RutisLU(A,p)
    
    if(argn(2) == 2)
        verificador = 1
        funcprot(0);
          while verificador == 1
            [L,U] = lu(A)
            A=U*L
        // iterações do método de Rutishauser para obter a matrix A_k
            verificador = verifica(A,p)
          end
    
        Autovalores=diag(A)
        //Extraimos os autovalores da diagonal da nossa nova matrix A
    end
    
endfunction
