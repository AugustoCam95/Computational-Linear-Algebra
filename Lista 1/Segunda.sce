// José Augusto Câmara Filho - Matemática Industrial
//Questão 2
function x=SomatorioMatriz(n)
//Esse laço insere os elementos na mattriz unidimensional 
     for i=1:n
          A(i)=i;
     end
     //A função "sum" faz uma soma acumulativa de todos elementos da primeira linha da matriz unidimensional
     x=sum(A,1);

endfunction
