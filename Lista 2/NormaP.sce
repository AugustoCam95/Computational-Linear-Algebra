// José Augusto Câmara Filho - Matemática Industrial
//ATENÇÃO EXECUTAR ESTÁ FUNÇÃO JUNTO COM A FUNÇÃO AUXILIAR "norma".
function x= NormaP(A,p,m)
     [l, c] = size(A);
//Armazena em l e c, o tamanho das linhas e das colunas
     v= zeros(1,m);
//inicia um vetor com todos os elementos iguais a zero
     for i=1:m
         s(:,i)= rand(c,1);
//gera m vetores randômicos de acordo com a entrada do usuário
     end
     
     for i=1:m
          v(i)= norma(A*s(:,i),p)/norma(s(:,i),p);
//calcula a norma através da função auxiliar "norma" com o p definido pelo usuário e em seguida armazena o valor no vetor v(i)
     end
  
     x = max(v);
//pega o maior elemento e armazena na variável x que será o retorno da função
endfunction 
