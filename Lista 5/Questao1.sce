function P = Questao1(Z)
    if(1< size(Z,2)) then
            // se o vetor for inserido com mais de uma coluna nos o transpomos
            Z = Z';
         end
    // calcula a norma 2 do vetor Z
    norma = norm(Z,2)
    
    // tira o sinal do primeiro elemento do vetor Z
    sinal= Z(1)/abs(Z(1))
    
    //calcula a v
    v = Z + (sinal* norma* eye(length(Z), 1)); 
    
    //monta a matriz P
    P = eye(length(v), length(v)) - (2 / (v' * v)) * (v * v');

     
endfunction
