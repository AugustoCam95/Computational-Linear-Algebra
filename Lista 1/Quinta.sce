// José Augusto Câmara Filho - Matemática Industrial

function Quinta(k)
     
     soma=0;
     for i=1:k
          soma= (1/((i)^2)+soma);
     end
     x=6*soma;
     x=sqrt(x);
     a = printf('%.6G',x);
     //disp(a)
endfunction
