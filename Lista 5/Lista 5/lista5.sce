//Universidade Federal do Ceará
//Igor Farias Souza - 352202
//Algebra Linear Computacional
//Prof. Ricardo
clc
clear
close
printf("-------------Lista 5 ---------------\n");
printf("Digite o número da questão: \n")
questao = input(" ");

select questao
    
    case 1 then
         printf("Entre com o vetor: \n");
         x = input("");
         
         //garantindo que v é vetor coluna
         if(size(x,1) < size(x,2)) then
            
            x = x';
            
         end
         
         exec("retorn_P.sci");
         
         P = retorn_P(x);
         
         printf("Matriz de Householder de P: \n");
         disp(P);
             
    case 2 then
         printf("Entre com o vetor: \n");
         x = input("");
         
         //garantindo que v é vetor coluna
         if(size(x,1) < size(x,2)) then
            
            x = x';
            
         end
         
         exec("rotationGivens.sci");
         
         printf("Entre com i: \n");
         i = input("");
         printf("Entre com j: \n");
         j = input("");
         
         //Nota: 
         //Para guardar as matrizes G geradas pelas rotações de givens por um vetor x, usar comando cell.
         //Ex.: inicialization: g = cell(n,n) ----> uma célula de n por n, onde cada posição guarda um objeto
         //    assignment: g(i,j).entries = eye(i,i), por exemplo
         //    accessing: g(i,j).entries
         //    // g's dimension : g.dims
         
         [G,x] = rotationGivens(x, i, j);
         
         printf("Matriz de Givens para %d, %d: ", i, j);
         disp(G);
         
         
    case 3 then
        printf("Entre com a matrix: ");
        A = input(""); 
        
        exec("householder_trans.sci");
        
        [Q,T] = householder_trans(A);
        
        printf("Matriz Ortogonal Q: \n");
        disp(Q);
        printf("Matriz Triagonal: \n");
        disp(T);
               
    case 4 then
        printf("Digite a matriz:  \n");
        A = input("");
        
        exec("Givens.sci");
        [Q, T, g] = Givens(A);
        printf("Matriz Q: \n");
        disp(Q);
        printf("Matriz T: \n");
        disp(T);
        //tamanho = g.dims(1) 
        //disp(g(1:tamanho).entries);
          
    case 5 then
        printf("Gerando matrizes aleatórias... \n");
        exec("randommatrix.sci");
        
        randommatrix();
    else
       printf("Não há esta questão. \n");
    end
