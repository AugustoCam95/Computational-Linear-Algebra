function [x,xsol]=Questao_4(A,b,alfa,e)
  //Inicialização da questão e de sua variáveis
  n = size(A,1)
  I=eye(n,n)
  M=(1/alfa)*I
  N=((1/alfa)*I)-A
  x=ones(n,1)
  crit=1
  normb=norm(b)
  
  
  while(e<crit )
        //iterações
        x= x + alfa*(b - A * x)
        
        
        xsol = M \ (N * x + b)
        
        //critério de parada
        crit = norm((A * x - b) / normb)
    
  end

    
endfunction
