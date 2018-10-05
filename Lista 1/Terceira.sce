// José Augusto Câmara Filho - Matemática Industrial
function y=Quarta(n)
//Esse laço insere os elementos elevados a potência de 2 na mattriz unidimensional
     for i=1:n
          B(i)=(i)^2;
     end
     //A função "sum" faz uma soma acumulativa de todos elementos da primeira linha da matriz unidimensional
     y=sum(B,1);
     
endfunction
