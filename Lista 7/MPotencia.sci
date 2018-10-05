// sempre eh bom colocar função na extensão .sci

// vou colocar as variáveis iguais ao do caderno...se tu não gostar, pode mudar. Eh so pra me nao se perder.
function [y, x]= MPotencia(A)
    
    [l,c] = size(A);
    y = ones(l,1);
    err = 1;
    while (err > 1E-4)
    
        z = A*y ;
        maximo = max(y);
        yk = 1/c * z;
        err = abs(norm(x) - norm(y./y_i))/abs(norm(x));
        x=y./y_i;
    end
    
    
endfunction
