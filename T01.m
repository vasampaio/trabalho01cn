
choice = input("\nEscolha uma opcao:\n1 para rodar teste padrao\n2 para rodar teste customizado\n3 para calcular o valor maximo de a\n")

switch(choice)
  case 1
    a=1;
    E=0.00001;
    [k y] = F1(a);
    [n m] = Fase1(a);
    
      disp("Isolamento:")
      disp(n)
      disp(m)
      disp("\nDistancia:")
      disp("\nPosicao Falsa:")
      d = PosicaoFalsa(E,a,n,m)
      erro = ErroAbsoluto(d,a)
      pause()
      disp("\nNewton-Raphson")
      d1 = NewtonRaphson(E,a,n,m)
      erro1 = ErroAbsoluto(d1,a)
      pause
      disp("\nNewton-Raphson Mod")
      d2 = NewtonRaphsonMod(E,a,n,m)
      erro2 = ErroAbsoluto(d2,a)
      
      disp("\nAltura Max:")
      max = F(PFD(E,a,k,y),a)
      if(F(PFD(E,a,k,y),a)<=2)
      disp("\nO foguete nao ira explodir")
      else
      disp("\nO foguete ira explodir")
      endif
  case 2
    
    nf = input("\nDigite o numero de foguetes ")
    for i=1:nf
      disp("\n")
      disp(i)
      a = input("Digite o a do foguete ");
      E = input("Digite o E do foguete ");
      [k y] = F1(a);
      [n m] = Fase1(a);
      disp("Isolamento:")
      disp(n)
      disp(m)
      disp("\nDistancia:")
      disp("\nPosicao Falsa:")
      d = PosicaoFalsa(E,a,n,m)
      erro = ErroAbsoluto(d,a)
      pause()
      disp("\nNewton-Raphson")
      d1 = NewtonRaphson(E,a,n,m)
      erro1 = ErroAbsoluto(d1,a)
      pause
      disp("\nNewton-Raphson Mod")
      d2 = NewtonRaphsonMod(E,a,n,m)
      erro2 = ErroAbsoluto(d2,a)
      
      disp("\nAltura Max:")
      max = F(PFD(E,a,k,y),a)
      if(F(PFD(E,a,k,y),a)<=2)
      disp("\nO foguete nao ira explodir")
      else
      disp("\nO foguete ira explodir")
      endif
    endfor
  case 3
    %TesteA
    disp("\nValor maximo de a")
    max = Amax()
  otherwise
    disp("Opcao nao valida")
endswitch