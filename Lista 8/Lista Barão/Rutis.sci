function [Autovalores]=Rutis(A,p)
    
    //verifica os argumentos de entrada
    if(argn(2) == 2) 
        funcprot(0);
        verificador = 1
        //inicia verificador = 1 para entrar no laço
           
            while verificador == 1
               
                [L,U] = lu(A)
                A=U*L
                //iterações do método de Rutishauser
                
                verificador = verifica(A,p)
                //confere se o verificador muda de valor para sair do laço, se não ocorrerá outra iteração
            end
    
        Autovalores=diag(A)
        //Extraimos os autovalores da diagonal da nossa nova matrix A
    end
endfunction
