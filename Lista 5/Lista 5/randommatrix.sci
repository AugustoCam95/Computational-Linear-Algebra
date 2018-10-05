function [] = randommatrix()
     
     exec("householder_trans.sci");
     exec("Givens.sci");
     
     A1 = rand(3,5);
     [Q,T] = householder_trans(A1);
     [Q1,T1] = Givens(A1);
     
     //mostrando matrizes geradas pela transformação de householder
     printf("----------------------Householder----------------------- \n");
     
     printf("Matriz A: \n");
     disp(A1);
     printf("Matriz Q usando Householder: \n");
     disp(Q);
     printf("Matriz T usando Householder: \n");
     disp(T);
     printf("Q*T: \n");
     disp(Q*T); 
     
     // mostrando matrizes de givens
//     printf("------------------------Givens---------------------------- \n");
//     printf("Matriz A: \n");
//     disp(A1);
//     printf("Matriz Q usando Householder: \n");
//     disp(Q1);
//     printf("Matriz T usando Givens: \n");
//     disp(T1);
//     printf("Q*T: \n");
//     disp(Q1*T1); 
//     printf("------------------------------------------------------------ \n");
//     
//     A2 = rand(5,5);
//     [Q,T] = householder_trans(A2);
//     [Q1,T1] = Givens(A2);
//     printf("Matriz Q: \n");
//     printf("Matriz T: \n");
//     A3 = rand(5,3);
//     [Q,T] = householder_trans(A3);
//     [Q1,T1] = Givens(A3);
      
endfunction
