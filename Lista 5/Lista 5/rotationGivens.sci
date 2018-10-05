// Function que retorna a matriz de Givens, com as entradas de i e j do vetor.

function [G,x] = rotationGivens (x, i, j)
        
        //início
        if (i < j) then
            
           dimensao = length(x);
        
           cos_teta = x(i)/((x(i).^2 + x(j).^2).^(1/2)); // cos 0
           sin_teta = x(j)/((x(i).^2 + x(j).^2).^(1/2));  // sin 0
        
           G = eye(dimensao, dimensao);
           
           G(i,i) = cos_teta;
           G(i,j) = sin_teta;
           G(j,i) = - sin_teta;
           G(j,j) = cos_teta;
           
//           for linha = i:j 
//               for coluna = i:j
//                   if(linha == i) then
//                      G(i,i) = cos_teta;
//                      if (coluna == j) then
//                         G(i,j) = sin_teta;
//                      end // if
//                   end //if
//                   if(linha == j) then
//                      G(j,j) = cos_teta;
//                      if(coluna == i) then
//                        G(j,i) = -1 * sin_teta;
//                      end 
//                   end //if
//              end  
//           end
        x = G * x;
        end //if
        
endfunction     
