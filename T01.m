
choice = input("\nEscolha uma opcao:\n1 para rodar teste padrao\n2 para rodar teste customizado\n")

switch(choice)
  case 1
    a=1;
    E=0.00001;
    [k y] = F1(a);
    [n m] = Fase1(a);
    if(F(PFD(E,a,k,y),a)<=2)
      disp("\nO foguete nao ira explodir")
    else
      disp("\nO foguete ira explodir")
  endif
      disp("Isolamento:")
      disp(n)
      disp(m)
      disp("\nDistancia:")
      disp("\nPosicao Falsa:")
      d = PosicaoFalsa(E,a,n,m)
      disp("Erro")
      erro = ErroAbsoluto(d,a)
      disp("\nNewton-Raphson")
      d1 = NewtonRaphson(E,a,m)
      disp("Erro:")
      erro1 = ErroAbsoluto(d1,a)
      disp("\nAltura Max:")
      max = F(PFD(E,a,k,y),a)
  case 2
    
    nf = input("\nDigite o numero de foguetes ")
    for i=1:nf
      disp("\n")
      disp(i)
      a = input("Digite o a do foguete ");
      E = input("Digite o E do foguete ");
      [k y] = F1(a);
      [n m] = Fase1(a);
      if(F(PFD(E,a,k,y),a)<=2)
        disp("\nO foguete nao ira explodir")
      else
        disp("\nO foguete ira explodir")
      endif
      disp("Isolamento:")
      disp(n)
      disp(m)
      disp("\nDistancia:")
      disp("\nPosicao Falsa:")
      d = PosicaoFalsa(E,a,n,m)
      disp("Erro")
      erro = ErroAbsoluto(d,a)
      disp("\nNewton-Raphson")
      d1 = NewtonRaphson(E,a,m)
      disp("Erro:")
      erro1 = ErroAbsoluto(d1,a)
      disp("\nAltura Max:")
      max = F(PFD(E,a,k,y),a)
    endfor
  otherwise
    disp("Opcao nao valida")
endswitch