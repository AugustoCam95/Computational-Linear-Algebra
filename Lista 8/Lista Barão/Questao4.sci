function Questao4()
    //Cria a matrix 7x7
    A=rand(7,7);
    
    //gera números randômicos e adiciona na matrix
    
//    for i = 1 : 7
//        for j = i : 7
//            A(i,j)=rand()
//            A(j,i)=A(i,j)
//        end
//    end
    
    // para ser simetrica
    A = A *A';
    
    
    //x recebe os autovalores do método de Rutishauser
    x = Rutis(A,0.000001)

    //y recebe os autovalores do método de Francis
    y = Francis(A,0.0001)

    // mostra os autovalores obtidos
    disp(x)
    disp(y)

endfunction
