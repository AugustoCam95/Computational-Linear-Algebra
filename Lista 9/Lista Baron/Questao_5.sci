
// Atenção, este método precisa das seguintes funções serem executadas previamente:
//"Questao_1.sci"
//"Questao_2.sci"
//"Questao_3.sci"
//"Questao_4.sci"
//"MPotencia.sce"
//"MPotenciaInv.sce"

function [xi, xsol]=Questao_5()

//a ordem foi dada na questão:
    n = 5;
    
// pegando uma matriz definida positiva através 
    A = Questao_2(n);
    
// criando um x, para gerar um vetor b
    x = 10 * rand(n, 1);
    
    for i = 1:n
        x(i) = floor(x(i));
    end
    
    disp(x);
    b = A * x;
    
    // autovalores para o alpha otimo
    //y1 = max(autovalores); (usando Power)
    //yn = y5 = min(autovalores); (Usando InvPower)
    
    // usando o método da potência e da potência inversa para pegar o maior e menor autovalor, respectivamente
    y5 =MPotencia(A);
    y1 =MPotenciaInv(A);
    
    // alpha ótimo
    // do spec: 
    //alpha1 = 2/(autovalor(1) + autovalor(5) );
    
    alpha = 2/(y1 + y5);
    

    //usando o método feito na quarta questão
    xi = Questao_4(A, b, alpha, 1E-3);
    
    
    
endfunction
