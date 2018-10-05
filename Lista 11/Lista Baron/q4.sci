function A=q4(autovalores)
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
    
    P=ones(n,n)
    
    for i=1:n
        for j=1:n
            if (((i+j)/2)-floor((i+j)/2))>0 then
                P(i,j)=0
            end
        end
    end
    
endfunction
