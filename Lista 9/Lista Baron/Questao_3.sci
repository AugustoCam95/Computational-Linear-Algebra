function A=Questao_3(n)
//cria randômicamente os autovalores negativos
autovalores=-1*abs(rand(n))
//o resto é parecido com a questão 1...
T=floor(abs(10*rand(n,n)))

A=zeros(n,n)

A=diag(autovalores)

T= (T + T')*0.5;

A=inv(orth(T)')*A*inv(orth(T))

endfunction
