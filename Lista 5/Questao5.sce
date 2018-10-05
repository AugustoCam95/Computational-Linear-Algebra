//ATENÇÃO: Executar esse código juntto as funções: Questao3 e Questao4
function [] = Questao5()
    //Monta uma matriz randômica 3x5
    A3x5 = rand(3,5)
    //Resolve por householder
    [Q3x5H, T3x5H] = Questao3(A35)
    P3x5H = Q3x5H*T3x5H
    //Resolve por Givens
    [Q3x5G, T3x5G] = Questao4(A35)
    P35G = Q35G*T35G
    //Monta uma matriz randômica 5x5
    A5x5 = rand(5,5)
    //Resolve por householder
    [Q5x5H, T5x5H] = Questao3(A55)
    P5x5H = Q5x5H*T5x5H
    //Resolve por Givens
    [Q5x5G, T5x5G] = Questao4(A55)
    P5x5G = Q5x5G*T5x5G
    //Monta uma matriz randômica 5x3
    A5x3 = rand(5,3)
    //Resolve por householder
    [Q5x3H, T53xH] = Questao3(A53)
    P5x3H = Q5x3H*T5x3H
    //Resolve por Givens
    [Q5x3G, T5x3G] = Questao4(A53)
    P5x3G = Q5x3G*T5x3G
    //Printa na tela "Console" as matrizes, as matrizes T e as matrizes Q de cada Matriz usando Householder e Givens
    disp(A3x5, "#A3x5 = ")
    disp(Q3x5H, "Q3x5H = ")
    disp(T3x5H, "T3x5H = ")
    disp(P3x5H, "P3x5H = ")
    disp(Q3x5G, "Q3x5G = ")
    disp(T3x5G, "T3x5G = ")
    disp(P3x5G, "P3x5G = ")
    disp(A5x5, "#A5x5 = ")
    disp(Q5x5H, "Q5x5H = ")
    disp(T5x5H, "T5x5H = ")
    disp(P5x5H, "P5x5H = ")
    disp(Q5x5G, "Q5x5G = ")
    disp(T5x5G, "T5x5G = ")
    disp(P5x5G, "P5x5G = ")
    disp(A5x3, "#A5x3 = ")
    disp(Q5x3H, "Q5x3H = ")
    disp(T5x3H, "T5x3H = ")
    disp(P5x3H, "P5x3H = ")
    disp(Q5x3G, "Q5x3G = ")
    disp(T5x3G, "T5x3G = ")
    disp(P5x3G, "P5x3G = ")
    
endfunction
