//Método da Potência inversa, entrada a matriz A
function [y_i, x]= MPotenciaInv(A)
    
    [l,c] = size(A);
    //Extrair as dimenssões de A
    x=zeros(l,1) + 1;
    //Criar a matriz x com todos os elementos iguais a 1
    err=1;
    //inicializar a variável err = 1
    while (err > 1E-2)
    
        y = A\x ;
        // matriz Y é obtida através do comando / , para resolver o sistema linear
        
        y_i=max(abs(y));
        //armazenamos o nosso autovalor em y_i
        
        err = abs(norm(x) - norm(y./y_i))/abs(norm(x));
        //calculamos o erro 
        
        x=y./y_i;
        //calculamos o novo x
    end
    
    
endfunction

