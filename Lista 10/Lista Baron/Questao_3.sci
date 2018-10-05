function Questao_3()
    //monto o meu vetor x com valores randômicos
    x=zeros(101,1)
    for i=1:101
        x(i,1)=floor(abs(10*rand()))
    end
    //A eu recebo da questão 2
    A=Questao_2()
    //Pego b do sistema Ax=b <-> b=Ax
    b=A*x
    [x1,niter1]=sor(A,b,1.1)
    [x2,niter2]=sor(A,b,1.2)
    [x3,niter3]=sor(A,b,1.3)
    [x4,niter4]=sor(A,b,1.4)
    [x5,niter5]=gaussseidel(A,b)
    [x6,niter6]=GradConj(A,b,0.00000001)
    disp('Sor com w=1.1')
    disp(niter1)
    disp('Sor com w=1.2')
    disp(niter2)
    disp('Sor com w=1.3')
    disp(niter3)
    disp('Sor com w=1.4')
    disp(niter4)
    disp('Guass-Seidel')
    disp(niter5)
    disp('Gradiente conjugado')
    disp(niter6)
    
endfunction

