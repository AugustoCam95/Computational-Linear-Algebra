// José Augusto Câmara Filho - Matemática Industrial
function SecondQuestion()

xdel(winsid())
//comando pra limpar tela
clear
//limpar variáveis
clc
//comando para limpar console

x = -1:0.1:1;
y = -1:0.1:1;
[X,Y]=meshgrid(x,y);
//cria uma malha em 3D
Z= X.^2+Y.^2;
//função principal
scf(15);
clf(15);
mesh(X,Y,Z);
xlabel('X');ylabel('Y');zlabel('Z= X^2+Y^2');
title("2 Questão (#Points ="+string(length(x))+").","color","black","fontsize",4);
title("1 Questão (#Points ="+string(length(x))+").","color","blue","fontsize",4);
//título da plotagem
xs2png(gcf(),"plot2.png");
//comando para salvar o ploto no disco rígido, no caso está no formato png
endfunction
