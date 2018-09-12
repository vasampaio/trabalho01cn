
choice = input("\nEscolha uma opcao:\n1 para rodar teste padrao\n2 para rodar teste customizado\n3 para calcular o valor maximo de a\n")

switch(choice)
  case 1 %Teste padrao a=1 e E 10^-5
    a=1;
    E=0.00001;
    [k y] = F1(a); %Chama a funcao que faz o isolamento da derivada da funcao
    [n m] = Fase1(a); %Chama a funcao que faz o isolamento para a funcao
    
      disp("Isolamento:") %Mostra o isolamento
      disp(n)
      disp(m)
      disp("\nDistancia:")
      disp("\nPosicao Falsa:")
      d = PosicaoFalsa(E,a,n,m) % Chama a funcao que calcula a raiz via posicao falsa, ela recebe o isolamento o a e o E
      erro = ErroAbsoluto(d,a) % Chama a funcao que calcula o erro absoluto
      pause()
      disp("\nNewton-Raphson")
      d1 = NewtonRaphson(E,a,n,m) % Chama a funcao que calcula a raiz via NewtonRaphson
      erro1 = ErroAbsoluto(d1,a)
      pause
      disp("\nNewton-Raphson Mod")
      d2 = NewtonRaphsonMod(E,a,n,m) % Chama a funcao que calcula a raiz via NewtonRaphsonMod
      erro2 = ErroAbsoluto(d2,a)
      
      disp("\nAltura Max:")
      max = F(PFD(E,a,k,y),a) % Calcula a altura maxima chamando a funcao que calcula a raiz da derivada e aplica o resultado na funcao F
      if(max<=2) % Testa se o foguete vai explodir ou nao
      disp("\nO foguete nao ira explodir")
      else
      disp("\nO foguete ira explodir")
      endif
  case 2 % Recebe um numero variavel de foguete cada um com seu a e E informados pelo usuario
    % a logica ・a mesma do caso 1
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
  case 3 % Testa diferentes valores de a e me diz o valor maximo em que nao ha explosao
    TesteA % Testa valores diferentes de a
    disp("\nValor maximo de a")
    max = Amax() % Calcula o valor maximo de a
  otherwise
    disp("Opcao nao valida")
endswitch
