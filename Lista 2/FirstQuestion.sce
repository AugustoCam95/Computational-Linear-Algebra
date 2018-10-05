// José Augusto Câmara Filho - Matemática Industrial
function FirstQuestion()
xdel(winsid())
//comando pra limpar tela
clear
//limpar variáveis
clc
//comando para limpar console
x= linspace(0.5,5.5,50);
// espaço de x
y= x.^5-15*x.^4+85*x.^3-225*x.^2+274*x-120;
// função y
scf(1);
clf(1);
plot(x,y);
//plotagem da função y=x.^5-15*x.^4+85*x.^3-225*x.^2+274*x-120
plot(x,y*0);
//plotagem da funão y=0
xlabel("$0.5\le x\le 5$","fontsize",4,"color","blue");
ylabel("$y(x)=x^5-15*x^4+85*x^3-225*x^2+274*x-120$","fontsize",4,"color","red");
title("1 Questão (#Points ="+string(length(x))+").","color","blue","fontsize",4);
//título da plotagem
xs2png(gcf(),"plot1.png");
//comando para salvar o ploto no disco rígido, no caso está no formato png
endfunction
