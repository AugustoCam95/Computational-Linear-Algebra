function [autovetores, autovalores, inversa]=MethodLeverrierFaddeev(A)

    [l,c] = size(A)

     I = eye(l,c)
     B_i = eye(l,c)
    
     C = 0 //armazena valores das matrizes Bk
     autovetores = 0 //armazena autovetores associados
     coef = 0 //armazena valores dos coeficientes p
     coef(1,c+1) = 1
    
     col=1
    
     for i=1:c
    
     A_i = A*B_i
    
     q_i = (trace(A_i) / i)
    
     coef(1,c+1-i) = (-1*q_i) //armazena coeficientes do polinômio
     //caracteristico reversamente
    
     B_i = A_i - (q_i*I)
    
     [lB,cB] = size(B_i)
     C(1:lB,col:col+cB-1) = B_i //armazena matrizes B_k
     col = col+cB
    
     end
    
     //gera polinomio caracteristico
     p = poly(coef,"x","coeff")
     p = ((-1)^c) * p
    
     //calcula autovalores - raizes do polinomio caracteristico
     autovalores = roots(p)
    
     //calcula inversa
     if coef(1,1) / -1 == 0 then
     inversa = 0 //não é possivel calcular inversa
    
     else inversa = C(1:l,c*(c-2)+1 : c*(c-1)) / (coef(1,1) / -1) //B_2 / p3
     
     end

     //daqui para frente, calcula autovetores associados
     [num_autovalores,lixo] = size(autovalores)
    
     for i=1 : num_autovalores
    
     u0 = eye(l,1)
     u_j=0
     pulo=1 //selecionar primeira coluna da matriz B correspondente
    
     for j=1:l-1

     u_j = (autovalores(i,1)*u0) + C(1:l, pulo:pulo)
    
    
     u0 = u_j
     pulo = pulo+c //pula para primeira coluna da proxima matriz B
    
    
    end
    
     //armazena na coluna i o autovetor associado ao i-ésimo autovalor
     autovetores(1:l,i:i) = u_j
    
     end

endfunction
