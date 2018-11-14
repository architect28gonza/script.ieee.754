
function [ ] = Metodo()
  clc;
  clear;
  listaM = [ ];
  disp(" [ METODOS NUMERICOS ] \n [ SEDE PLANETA RICA ] ");
  numero = input("\n Ingrese un numero: ");
  decimal = numero - fix(numero);
  
  disp(decimal);
  signo = -1;
  
  if numero < 0
    signo = 1;
    Positivo(numero*-1, listaM, signo, decimal);
    else
      signo = 0;
      Positivo(numero, listaM, signo, decimal);
  endif
endfunction

function [] = Positivo(numero, listaM, signo, decimal)
  
  deciLista = [ ];
  repetidos = [ ];
  cont = 0;
  band = false;
  while( cont != 23 || band != true )
      [ band ]  = Repetidos( repetidos, decimal, band );
      decimal = decimal*2;
      repetidos = [ repetidos decimal ];
      if(decimal >= 2)
        break;
      endif
      entera = fix(decimal);
      deciLista = [ deciLista entera ];
      decimal = decimal - fix(decimal);
      cont = cont + 1;
  endwhile
  
  cociente = numero;
  while(cociente > 0 )
      resta = rem(cociente, 2);
      cociente = fix(cociente./2);
      listaM = [ resta listaM ];
  endwhile
  
  contadorE = 1;
  
  tama = length(listaM)-1;
  while(tama != 1)
      tama = tama - 1;
      contadorE = contadorE + 1;
  endwhile
  contadorE = contadorE + 127;
  
  listaE = [ ];
  while(contadorE > 0 )
      resta = rem(contadorE, 2);
      contadorE = fix(contadorE./2);
      listaE = [ resta listaE ];
  endwhile
  cont = 0;

  printf("\nSIGNO: ");disp(signo);
  printf("\nEXPONENTE:"); disp(listaE);
  printf("\nMANTIZA:  ");
  cant = 0;
  for x = 2:length(listaM)
      printf("%d  ",fix(listaM(x)));
      cant = cant + 1;
  endfor
  cant = 23 - cant;
  for x = 1:cant
      printf("%d  ",deciLista(x));
  endfor
  
  cont = 23 - (length(listaM) + cant);
  for x = 0:cont
      printf(" 0 ");
  endfor
  disp("");
endfunction

function [ band ]  = Repetidos( repetidos, cociente, band )
  for x = 1:length(repetidos)
    if(length(repetidos) == 1)
      band = false;
    else 
      if(cociente == repetidos(x))
          band = true;
      endif
    endif
  endfor
endfunction
