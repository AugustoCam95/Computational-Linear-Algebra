// José Augusto Câmara Filho - Matemática Industrial
function A=Oitava(v,k)
//Essa função insere os elementos de um vetor que o usuário cadastra previamente para serem os elementos que farão parte da matriz de Vandermonde e um inteiro "k" será o termo da ultima potência.
     b= length(v)
     // A variável "b" recebe o tamanho do vetor
     for i = 1:b
          for j = 1:k
               A(i,j)= v(i)^(j-1)
          end;
     end
//Inserção dos elementos num duplo laço de for de "i" até "b" para pegar todos os 
endfunction

