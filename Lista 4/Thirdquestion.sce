
function B=ThridQuestion(A)
    [l, c] = size(A);
    t=2*l
    r=2*c
    //Inica H como uma matriz de zeros
    H=zeros(t,r)
    
    //Insere A' na matriz H
    for i=1:l
        for j=1:c
            H(i,j)=A(j,i)
        end
    end
    
    
    //Antirotaciona H
    B=H;
//Variável para guardar a metade da ordem
p=r/2;
//Laço para trocar H1 e H3
for i = p+1:r
     k= p+1;
     for j = 1:p
          B(i,k) = H(i,j);
          B(j,i) = H(k,i);
          k=k+1;
     end;
end
//Laço para trocar H2 e H4
for i = 1:p
     k= 1;
     for j = p+1:r
          B(j,i) = H(k,i);
          B(i,k) = H(i,j);
          k=k+1;
     end;
end
H=B;

//Antirotaciona H

B=H;
//Variável para guardar a metade da ordem
p=r/2;
//Laço para trocar H1 e H3
for i = p+1:r
     k= p+1;
     for j = 1:p
          B(i,k) = H(i,j);
          B(j,i) = H(k,i);
          k=k+1;
     end;
end
//Laço para trocar H2 e H4
for i = 1:p
     k= 1;
     for j = p+1:r
          B(j,i) = H(k,i);
          B(i,k) = H(i,j);
          k=k+1;
     end;
end
H=B;

//Insere A em H e depois Antirotaciona novamente
    for i=1:l
        for j=1:c
            H(i,j)=A(j,i)
        end
    end

B=H;
//Variável para guardar a metade da ordem
p=r/2;
//Laço para trocar H1 e H3
for i = p+1:r
     k= p+1;
     for j = 1:p
          B(i,k) = H(i,j);
          B(j,i) = H(k,i);
          k=k+1;
     end;
end
//Laço para trocar H2 e H4
for i = 1:p
     k= 1;
     for j = p+1:r
          B(j,i) = H(k,i);
          B(i,k) = H(i,j);
          k=k+1;
     end;
end
H=B;
    //R recebe os autovetores e L recebe os autovalores
    [R,L]=spec(H)
         //gerando matriz S
         S = -1*L(1:l,1:c);
         //gerando matriz V
         V = sqrt(2)*R(1:l,1:c);
         //gerando matriz U
         U = -1*sqrt(2)*R(l+1:2*l,1:c);
         
         disp("Matriz U")
         disp(U)
         disp("Matriz S")
         disp(S)
         disp("Matriz V")
         disp(V)
         
         B=U*S*V
         
endfunction
