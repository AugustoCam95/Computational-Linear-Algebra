
function Gt =Questao2(x,i,j)
    [l,c] = size(x)
    
    //extrai xi e xj do vetor x
    xi = x(1)
    xj = x(j)
    
    //calcula o cosseno e o seno, em seuida armazena nas variáveis cosen e sen
    cosen = xi / (sqrt( (xi^2) + (xj^2) ))
    sen = -(xj / (sqrt( (xi^2) + (xj^2) )))
    
    //Inicia a matriz R(Gt) sendo a matriz identidade
    Gt = eye(l,l)
    
    //Monta a matriz R (Gt) e a retorna
    Gt(i,i) = cosen
    Gt(i,j) = -sen
    Gt(j,i) = sen
    Gt(j,j) = cosen
    

    

endfunction
