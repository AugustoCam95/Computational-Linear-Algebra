//Método da Potência, entrada a matriz A
function [y_i, x]= MPotencia(A)
    
    [l,c] = size(A);
    //Extrair as dimenssões de A
    x=zeros(l,1) + 1;
    //Criar a matriz x com todos os elementos iguais a 1
    err=1;
    //inicializar a variável err = 1
    while (err > 1E-2)
    
        y = A*x ;
        //calculamos a y da iteração
        y_i = max(abs(y));
        //armazenamos em y_i o candidato a autovalor
        err = abs(norm(x) - norm(y./y_i))/abs(norm(x));
        //calculamos o erro
        x=y./y_i;
        //calculamos o x da iteração seguinte
    end
    
    
endfunction
