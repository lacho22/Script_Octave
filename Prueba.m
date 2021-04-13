% Octave Script
% Title			:Funcion constante
% Description		:Script para graficar una funcion de la forma f(x)=a   
% Author		:Ing Horacio Rosales Velasco (lacho_t) ciberlinux2@gmail.com
% Date			:20210401
% sion		:1
% Usage			:octave> /path/f_constante
% Notes			:Requiere aplicacion octave usar en consola preferentemente

%      f(x) = a
% si se graficá su comportamiento es lineal
%      ^
%    y |
%      |   
%      |____________
%      | 
%      |_____________  > x
%

% limpiar variables
 clear
% Ejemplo f(x) = a
% Rango de -10..10 en i = 1
 x=-10:1:10;
% Valor de la funcion 
 y=0.45; 
% Dibujar x,y
 plot(x,y);
% Titulo
 title("f(x) = a");
% Etiqueta para x
 xlabel("x");
% Etiqueta para y
 ylabel("f(x)");
