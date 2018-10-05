// José Augusto Câmara Filho - Matemática Industrial
function A=Sexta(v,k)
//Essa função insere os elementos de um vetor que o usuário cadastra previamente junto com um k previamente escolhido deixando a dimensão k(n+1).
     b= length(v)
// A variável "b" recebe o tamanho do vetor

     for i = 1:k
          for j = 1:b
               A(i,j)= v(j)
          end;
     end
     
endfunction

