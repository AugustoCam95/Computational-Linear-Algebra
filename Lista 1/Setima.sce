// José Augusto Câmara Filho - Matemática Industrial

function A=Sexta(v,k)

//Essa função insere os elementos de um vetor que o usuário cadastra previamente junto com um k previamente escolhido deixando a dimensão k(n+1). Com o porém de inserir de forma que a matriz fica sendo a transposta do resultado da matriz da sexta questão.
     b= length(v)
     // A variável "b" recebe o tamanho do vetor
     for i = 1:b
          for j = 1:k
               A(i,j)= v(i)
          end;
     end
     
endfunction

