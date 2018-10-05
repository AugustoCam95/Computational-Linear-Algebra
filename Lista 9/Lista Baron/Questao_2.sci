function A = Questao_2(n)
//cria randômicamente os autovalores positivos
autovalores=abs(rand(n))
//o resto é parecido com a questão 1...
T=floor(abs(10*rand(n,n)))

A=zeros(n,n)

A=diag(autovalores)

T= (T + T')*0.5;

A=inv(orth(T)')*A*inv(orth(T))

endfunction
