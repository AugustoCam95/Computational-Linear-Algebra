// José Augusto Câmara Filho - Matemática Industrial
function x=norma(v,p)
     soma=0
      for i= 1:length(v)
           soma= (v(i)**p)+ soma;
//pega todos os elementos do vetor e a váriavel soma recebe todos esses elementos elevados a "p"
     end
     x=(soma)**(1/p);
//armazena em x a raiz de "1/p" da variavel soma
endfunction
