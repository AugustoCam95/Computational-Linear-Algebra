//função que retorna Q ortogonal e a triangular T
function [Q,T] = householder_trans(A)
      
      //início
      //chamar a função de householder
      exec("retorn_P.sci");
      funcprot(0);	
      [linha, coluna] = size(A);
      p = min(linha, coluna);
      Q = eye(linha, linha);
      Qk = Q;
      indice = 0;
      for k = 1:p
          x = A(k:linha, k);
          exec("retorn_P.sci");
         
          P = retorn_P(x);
          //disp(P)
          Qk = eye(linha, coluna); 
          for l = k:size(P, 1) +indice
              for c = k:size(P,2) + indice
                  Qk(l,c) = P(l - indice,c - indice);
                  //reindexação para não ter erro de acesso a matriz Qk e P
              end    
          end
          printf("k = %d : \n", k);
          disp(Qk);
    
          A = Qk*A;
          disp(A);             
          Q = Q*Qk;
          
          indice = indice + 1;
      end
      //disp(Q);
      //disp(A);
      T = A;
endfunction
