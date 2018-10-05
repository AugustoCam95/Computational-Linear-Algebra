// Método da potência deslocada
function [lambda,lambdamenor,Vx,Vxx]= MPotenciaDeslocamento(A)
    [l,c]= size(A)
    //Extrai as dimenssões de l,c
    [lambda,Vx]=MPotencia(A)
    //extrai o autovalor lambda e o autovetor associado Vx
    I=eye(l,l)
    // I será a nossa matriz identidade
    B= A-lambda*I
    //B será a nossa nova matriz
    [lambda2,Vxx]=MPotencia(B)
    //recalculamos o os autovaloes e autovetores associados, agora nas variáveis lambda2 e Vxx
    lambdamenor= lambda-lambda2
    // efetuamos a subtração para retornamos o menor autvalor e armazenamos em lambdamenor
    
endfunction
