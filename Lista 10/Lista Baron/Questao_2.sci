//Código referente a 2 Questão da lista 10
function A=Questao_2()
    //Inserindo os elementos no vetor "v"
    for i=1:101
        v(i)=(i+99)^2
    end
    //A recebe a matriz com os autovalores correpondentes aos elementos do vetor "v"
    A=Questao_1(v)
endfunction
