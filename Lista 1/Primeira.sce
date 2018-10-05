// José Augusto Câmara Filho - Matemática Industrial
//1-Questão. Matriz anti horária
function A = Primeira(n,m)

// A=inicia_matriz(n,m)
//Garante uma matrz de ordem par.
A=rand(m,n);
disp(A);
//Matriz vai conter números randômicos.
B=A;
//Variável para guardar a metade da ordem
p=m/2;
//Laço para trocar A1 e A3
for i = p+1:m
     k= p+1;
     for j = 1:p
          B(i,k) = A(i,j);
          B(j,i) = A(k,i);
          k=k+1;
     end;
end
//Laço para trocar A2 e A4
for i = 1:p
     k= 1;
     for j = p+1:m
          B(j,i) = A(k,i);
          B(i,k) = A(i,j);
          k=k+1;
     end;
end
A=B;

endfunction
