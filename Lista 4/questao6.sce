
function questao6()
    //gera uma matriz aleatória 5x3
    A=rand(5,3)
    // Faz svd de A
    [U1,S1,V1]=svd(A)
    
    //B recebe a matriz resultante da quinta questao
    B=FiveQuestion(A)
    
    //Faz o svd de B
    [U2,S2,V2]=svd(B)
    
    //Compara V1 e V2
    if V1==V2 then
        disp("V1 e V2 são iguais")
    elseif V1<>V2 then
        disp("V1 e V2 são diferentes")
    end
    
    //Mostra V1 e V2
    disp(V1)
    disp(V2)
    
    //Compara U1 e U2
        if U1==U2 then
        disp("U1 e U2 são iguais")
    elseif U1<>U2 then
        disp("U1 e U2 são dV1iferentes")
    end
    //Mostra U1 e U2
    disp(U1)
    disp(U2)
    
endfunction
