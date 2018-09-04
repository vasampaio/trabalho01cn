function [] = TesteA() %não funciona direito ainda, tá imprimindo errado
  E=0.00001;
  h=1;
  j = 1;
  for i=-5:0.5:5
    A(j) = i;
    [n m] = Fase1(i);
    [k y] = F1(i);
    PF(j) = PosicaoFalsa(E,i,n,m);
    NR(j) = NewtonRaphson(E,i,n,m);
    NRM(j) = NewtonRaphsonMod(E,i,n,m);
    MAX(j) = F(PFD(E,i,k,y),i);
    j++;
  endfor
  clc
  %format short e
  printf("\n-----------------------------------------------------------------------------------------\n");
  printf("\tA\tPF\t\tNR\tNRM\t\tMAX\n");
  C = [A' PF' NR' NRM' MAX'];
  disp(C)
  %disp(real(C))
  printf("\n-----------------------------------------------------------------------------------------\n");
  %format
endfunction
