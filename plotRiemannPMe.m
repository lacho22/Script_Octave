% Octave Script
% Title			:Función sumas de Riemann con gráfica de rectangulos en punto medio
% Description		:Script para calcular el area aproximada de una función y su gráfica 
%                        por método de sumas de Riemann por punto medio
% Author		:Ing Horacio Rosales Velasco (lacho_t) isc.horacio.rv@gmail.com
% Date			:20210401
% Version		:1
% Usage			:octave> /path/plotRiemannPMe
% Notes			:Requiere aplicación octave usar en consola preferentemente

function[recabaDatos]=plotRiemannPMe(funcionE,la,lb,dn)

deltax = (lb-la)/dn;
x= la:deltax:lb;
f=inline(funcionE);
fplot(f);
sumaA = 0;
for i=1:dn-1
	
	
	xval = la + (i * deltax);
	faxval = f(xval + (deltax./2));
	
	retorno = -1 * faxval;
	rectangle('Position', [xval faxval deltax retorno], 'EdgeColor', 'b');

	%sumaA = sumaA + abs(fapxval * deltax);
	sumaA = sumaA + abs(deltax * f(la + (i*deltax)));
end

% sumaA = complementoRimman(funcionE, la, lb, dn); 
title(disp(['Riemann Sum: ', num2str(sumaA)]), 'FontSize', 20);
