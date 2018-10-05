function [norma] = norma_p(A, p, m)
         
         NORMA = [];
         for i = 1:m
             x = rand(size(A,2),1) ; 
             // y = A*x;
             
             norma_x = 0;
             for j = 1:length(x)
                 norma_x = abs(x(j)).^p + norma_x;
             end
             y = x/(norma_x^(1/p));
             
             y = A*y;
             
             norma_y = 0;
             for j = 1:length(y)
                 norma_y = abs(y(j)).^p + norma_y;
             end
             //Normalizando o vetor y = x/\\x\\
             norma_y = norma_y.^(1/p);
             
             NORMA(i) = norma_y;
             
         end

        // Essa execução, retorna o maior valor dentro da NORMA
         
         norma = max(NORMA);


endfunction 
