% Octave Script
% Title			:Función sumas de Riemann con gráfica de rectangulos circunscritos
% Description		:Script para calcular el area aproximada de una función y su gráfica 
%                        por método de sumas de Riemann superiores
% Author		:Ing Horacio Rosales Velasco (lacho_t) isc.horacio.rv@gmail.com
% Date			:20210401
% Version		:1
% Usage			:octave> /path/plotRiemannSup
% Notes			:Requiere aplicación octave usar CLI

function[recabaDatos]=plotRiemannSup(funcionE,la,lb,dn)

deltax = (lb-la)/dn;
x = la:deltax:lb;
f = inline(funcionE);
fplot(f);
sumaA = 0;

for i = 1:dn-1
	
	xval = la + (i * deltax);
	faxval = f(xval);
	
	if (faxval < 0 || xval > 0 )
        	faxval = f(xval + deltax);
	endif 

	retorno = -1 * faxval;
	rectangle('Position', [xval faxval deltax retorno], 'EdgeColor', 'b');

	sumaA = sumaA + abs(deltax * f(la + (i * deltax)));
end

title(disp(['Riemann Sum: ', num2str(sumaA)]), 'FontSize', 20);
