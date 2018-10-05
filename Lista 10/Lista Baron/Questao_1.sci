//Código referente a 1 Questão da lista 9
function A=Questao_1(autovalores)
    //pegando o tamanho do vetor
    n=length(autovalores)
    // criando uma matriz aleatória
    V=rand(n,n)
    //criando e motando a A
    A =zeros(n,n)
        for i =1:n
            A(i,i)=autovalores(i)
        end
    //deixando a V simétrica
    V= (V + V')*0.5;
    //pelo teorema de shur temos:
    A=inv(orth(V)')*A*inv(orth(V))
    
endfunction
