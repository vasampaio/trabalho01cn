function [] = TesteA() %Calula varios metodos para diferentes a
  E=0.00001; % precisão 10^-5
  h=1;
  j = 1;
  for i=-5:0.5:5 % Cria um vetor para cada metodo e calcula o a de -5 até 5 com passo de 0.5
    A(j) = i;
    [n m] = Fase1(i);
    [k y] = F1(i);
    PF(j) = PosicaoFalsa(E,i,n,m);
    NR(j) = NewtonRaphson(E,i,n,m);
    NRM(j) = NewtonRaphsonMod(E,i,n,m);
    MAX(j) = F(PFD(E,i,k,y),i);
    j++;
  endfor
  clc % limpa a tela
  %format short e
  printf("\n-----------------------------------------------------------------------------------------\n");
  printf("\tA\tPF\t\tNR\tNRM\t\tMAX\n");
  C = [A' PF' NR' NRM' MAX'];% cria uma matriz com todos os metodos e a imprime
  disp(C)
  %disp(real(C))
  printf("\n-----------------------------------------------------------------------------------------\n");
  %format
endfunction
