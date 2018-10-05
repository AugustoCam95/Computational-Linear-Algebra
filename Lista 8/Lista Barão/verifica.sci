function precisao = verifica(A,p)
    
    [l,c] = size(A)
    precisao = 0 //supoe verdadeira para dps verificar se é realmente ;)

for i = 1 : l
    for j = 1 : c
        if (i > j) then //para elementos abaixo da diag
            if (abs(A(i,j)) > p) then
                precisao = 1 //nao atingiu o valor dado em p
            end
        end
    end
end

endfunction
