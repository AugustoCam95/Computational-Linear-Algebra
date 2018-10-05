// José Augusto Câmara Filho - Matemática Industrial
function x= NormaOne(A)

    for i=1:size(A,1)     
              soma = 0;
              for j=1:size(A,2)
// esse laço vai somar todos os elementos das linhas de A em módulo mais a soma, fazendo assim uma soma acumulada dos elementtos
                  soma = abs( A(i,j) ) + soma;  
              end 
              //v(i) recebe as somas acumuladas do vetor v(i)
              v(i) = soma;
     end 
//Laço para encontrar o maior elemento de v(i) e guarda-lo em x
    x=0;
     for i=1:size(A,1)
          // compara se o elemento do v(i) é maior que o x e x recebe o v(i).
          if v(i) > x then
               x = v(i);
          end
     end
endfunction 
