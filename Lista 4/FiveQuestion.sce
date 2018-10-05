function B = FiveQuestion(A)
[l, c] = size(A);
//Armazena em l e c, o tamanho das linhas e das colunas
[U S V]=svd(A);
//Comando disponibilizado pelo professor
C=zeros(l,c);
//inicia uma matriz com todos os elementos iguais a zero
if l>c then // Verifica se a linha é maior que a coluna
    for i=1:c
        C(i,i) = 1;
    end
elseif c>l then//Verifica se a coluna é maior que a linha
    for i=1:l
        C(i,i) = 1;
    end
end
C=C';// C irá se atualizar e receber o transposto
B = V*C*U'; //Retorna a matriz calculada

endfunction
