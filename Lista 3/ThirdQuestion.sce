
function B = ThirdQuestion(A)
    //O usuário entra com a matriz de acordo com os seguintes casos abaixo.
    //Os casos são 3x5,5x5 e 5x3
    //Depois de calcular a pseudo inversa, o algoritmo printa na tela a respota das operações pedidas na questão de acordo com o caso inserido.
    x = input("Selecione o caso desejado 3x5= 1 5x5= 2 5x3= 3");
    //O usuário informa qual tipo de matriz ele inseriu
    select x
    case 1 then
        B=SecondQuestion(A);
        // retorna a pseudo inversa na matriz A
        disp(B*A);
        disp(A*B);
        disp(A*B*A);
        disp(B*A*B);
    case 2 then
                B=SecondQuestion(A);
          // retorna a pseudo inversa na matriz A
        disp(B*A);
        disp(A*B);
        disp(A*B*A);
        disp(B*A*B);
    case 3 then
                B=SecondQuestion(A);
          // retorna a pseudo inversa na matriz A
        disp(B*A);
        disp(A*B);
        disp(A*B*A);
        disp(B*A*B);
    end

endfunction
