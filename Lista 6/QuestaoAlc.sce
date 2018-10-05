function [autovetores, autovalores, inversa]=QuestaoAlc(A)
    
    [l,c] = size(A)//Extrai as dimenssões da matriz A
     I = eye(l,c)
     Bi = eye(l,c)
     C=zeros(l,c)//Matriz C para armazenar as matrizes Bk
     autovetores=zeros(l,c)
     coef_p=0 //armazena os coeficientes de p
     coef_p(1,c+1) = 1
     col=1
     
     for i=1:c
    
     Ai = A*Bi
    
     qi = (trace(Ai) / i)
    
     coef_p(1,c+1-i) = (-1*qi) //armazena coeficientes do polinômio
     //caracteristico reversamente
    
     Bi = Ai - (qi*I)
    
     [lB,cB] = size(Bi)
     C(1:lB,col:col+cB-1) = Bi //armazena as matrizes Bk
     col = col+cB
    
     end
     
     //Monta polinomio caracteristico
     p = poly(coef_p,"x","coeff")
     p = ((-1)^c) * p
    
     //Extrai os autovalodes das raizes do polinomio caracteristico
     autovalores = roots(p)
    
     //calcula inversa
     if coef_p(1,1) / -1 == 0 then
     inversa = 0 //caso em que não é possivel calcular inversa
    
     else inversa = C(1:l,c*(c-2)+1 : c*(c-1)) / (coef_p(1,1) / -1) 
    
     end
    
    
    //Dado que obtivemos os autovalores, podemos começar a calcular os autovetores associados
     [Nautovalores,lixo] = size(autovalores)
    
     for i=1 :Nautovalores
    
     u0 = eye(l,1)
     u_j=0
     incrementador=1 //selecionar primeira coluna da matriz B correspondente
    
     for j=1:l-1

     u_j = (autovalores(i,1)*u0) + C(1:l, incrementador:incrementador)
    
    
     u0 = u_j
     incrementador = incrementador+c //pula para primeira coluna da proxima matriz B
    
    
    end
    
     //armazena na coluna i o autovetor associado ao i-ésimo autovalor
     autovetores(1:l,i:i) = u_j
    
     end
    
    
    
endfunction
