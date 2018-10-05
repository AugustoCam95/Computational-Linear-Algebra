// funcão que retorna a matriz ortogonal Q e triangular T 
function [Q,T, guarda_g] = Givens(A)
     //inicio
     
     [linha, coluna] = size(A);
     
     p = min(linha, coluna);
     exec("rotationGivens.sci");
     guarda_g = cell();
     indice = 1;
     R = eye(p,p);     
     for j = 1:coluna
         for i = 1:linha
             if(i > j) then
                x = A(:, j) // pegando as colunas da matriz de A
                Rk = rotationGivens(x, j, i); // função retorna matriz que zera a coluna j 
                R = Rk*R; // autualização de R
                A = Rk*A; //atualização de A
                guarda_g(indice).entries = Rk;  
                indice = indice + 1;
             end
         end   
     end
     //disp(guarda_g(1,1).entries);
     
     Q = R';
     T = A;
endfunction 
