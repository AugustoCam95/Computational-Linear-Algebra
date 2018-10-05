function SecondQuestion()
    //Comandos para imprimir a imagem com o posto 1
    stacksize('max');
    A = fscanfMat('imagem.txt')
    stacksize('max');
    B= FirstQuestion(A,1)
    f=gcf();
    f.color_map=graycolormap(32);
   
    Matplot(B)
    xs2png(gcf(),"plot1.png");
    //comando para limpar o valor de A
    clear 
    
    //Comandos para imprimir a imagem com o posto 5
    
     A = fscanfMat('imagem.txt')
     stacksize('max');
    B= FirstQuestion(A,5)
    f=gcf();
    f.color_map=graycolormap(32);
    Matplot(B)
    xs2png(gcf(),"plot5.png");
    
    clear 
    
    //Comandos para imprimir a imagem com o posto 10
    
    A = fscanfMat('imagem.txt')
    stacksize('max');
    B = FirstQuestion(A,10)
    f=gcf();
    f.color_map=graycolormap(32);
    Matplot(B)
    xs2png(gcf(),"plot10.png");
    
    clear
    
    //Comandos para imprimir a imagem com o posto 50
    
    A = fscanfMat('imagem.txt')
    stacksize('max');
    B = FirstQuestion(A,50)
    f=gcf();
    f.color_map=graycolormap(32);
    Matplot(B)
    xs2png(gcf(),"plot50.png");
    
        A = fscanfMat('imagem.txt')
    stacksize('max');
    B = FirstQuestion(A,5000)
    f=gcf();
    f.color_map=graycolormap(32);
    Matplot(B)
    xs2png(gcf(),"plot5000.png");
endfunction
