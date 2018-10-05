
function q5()
    //autovalores pedidos da questao 5(a)
    for i=1:100
        autovalores(i)=i/10
    end
    
    //pegando o tamanho do vetor de autovalores
    n=length(autovalores)
    
    // criando uma matriz aleatória
    V=rand(n,n)
    
    //criando e motando a A
    A =zeros(n,n)
        for i=1:n
            A(i,i)=autovalores(i)
        end
    
    //deixando a V simétrica
    V= (V + V')*0.5;
    
    //pelo teorema de shur temos:
    A=inv(orth(V)')*A*inv(orth(V))
    
    //monto o meu vetor x com valores randômicos
    x=zeros(n,1)
    for i=1:n
        x(i,1)=floor(abs(10*rand()))
    end
    
    //encontro o vetor b
    b=A*x
    
    BB=q4(autovalores)
    
    //monto o meu vetor y com valores randômicos
    y=zeros(n,1)
    for i=1:n
        y(i,1)=floor(abs(10*rand()))
    end
    
    //encontro o vetor c
    c=BB*y
    
    [x1,niter1]=q2(A,b,0.1,0.00000001)
    [x2,niter2]=q2(A,b,1,0.00000001)
    [x3,niter3]=q2(A,b,1.1,0.00000001)
    [x4,niter4]=q2(A,b,1.5,0.00000001)
    [x5,niter5]=q1(A,b,0.00000001)
    [x6,niter6]=q3(BB,c,0.00000001)
    
    disp('Letra a')
    disp(A)
    
    disp('Letra b')
    disp('Gradiente conjugado com pre-condicionador de Jacobi')
    disp(x5)
    
    disp('Letra c')
    disp('SSor com w=0.1')
    disp(x1)
    disp('SSor com w=1')
    disp(x2)
    disp('SSor com w=1.1')
    disp(x3)
    disp('SSor com w=1.5')
    disp(x4)
    
    disp('Letra d')
    disp(BB)
    
    disp('Letra e')
    disp('Gradiente conjugado com pre-condicionador de Cholesky')
    disp(x6)
    
endfunction
