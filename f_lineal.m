% Octave Script
% Title			:Funcion Lineal
% Description		:Script para graficar una funcion de la forma f(x)=ax, f(x)=x+b, f(x)=ax+b
% Author		:Ing Horacio Rosales Velasco (lacho_t) ciberlinux2@gmail.com
% Date			:20210401
% Version		:1
% Usage			:octave> /path/f_lineal
% Notes			:Requiere aplicacion octave usar en consola preferentemente

%      f(x) = ax
%      f(x) = x + b
%      f(x) = ax + b
% si se graficá su comportamiento es lineal
%      ^
%    y |
%      |   /
%      |  /
%      | /
%      |/____________  > x
%
% limpiar variables
 clear
% Ejemplo f(x) = ax
% Pedir el valor para la constante a
 a=input('Inserta valor de constante a: ');
% Rango de -10..10 en i = 1
 x=-10:1:10;
% Valor de la funcion 
 y=a*(x); 
% Dibujar x,y
 plot(x, y);
% Titulo
 title("f(x) = ax");
% Etiqueta para x
 xlabel("x");
% Etiqueta para y
 ylabel("f(x)");

