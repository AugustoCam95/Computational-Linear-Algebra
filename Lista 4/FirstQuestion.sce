//A=[10 0 0 0; 0 5 0 0; 0 0 0.1 0]
function A=FirstQuestion(A,k)
    [l, c] = size(A);
    [U,S,V]=svd(A);
    
    //inicia uma matriz de zeros
    C=zeros(l,c);
    //Faz C ser igual a S
    for i=1:l
        C(i,i)=S(i,i)
    end
    
    //De acordo com os valores maiores que k, a extensão da matriz vai recebendo 0
    if l<c then
        for i=k+1:l
            C(i,i)=0
        end
    elseif l>c then
        for i=k+1;c
            C(i,i)=0
        end
    end
    
    //Recalcula o valor de A e retorna para o usuário
    A=U*C*V'
endfunction
