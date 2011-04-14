######################################################################################################
# Script "TantosEquivCompuesta.pl" - 14/04/2011 by EconomiaJoven.net                                 #
#                                                                                                    #
# This script is under Creative Commons Attribution-NonCommercial-ShareAlike 3.0 Spain license.      #
# http://creativecommons.org/licenses/by-nc-sa/3.0/es/                                               #
#                                                                                                    #
# If you notice a mistake or you want to discuss something, feel free to drop us a line.             #
# info[at]economiajoven[dot]net                                                                      #
######################################################################################################

print "\n";
print "Este es un script PERL para TANTOS DE INTERES Y DESCUENTO EQUIVALENTES EN CAPITALIZACION COMPUESTA.\n";
print "Si quieres hallar el tanto de descuento dado un tipo de interes, teclea 1.\n";
print "Si quieres hallar el tipo de interes dado un tanto de descuento, teclea 2.\n";
print "Por favor, escribe ahora el numero de la opcion que desees.\n";
$opcion = <STDIN>;
chop($opcion);
if ($opcion == 1)
	{
	print "\n";
	print "Teclea el tipo de interes (por ejemplo, 1% es 0.01):\n";
	$interes = <STDIN>;
	chop($interes);
		while ($interes <= 0)
		{
		print "Es un tipo de interes no valido. Introduce uno correcto:\n";
		$interes = <STDIN>;
		chop($interes);
		}
	print "\n";
	$descuento = $interes / (1 + $interes);
	print "El tanto de descuento equivalente es: $descuento";
	exit;
	}
elsif ($opcion == 2)
	{
	print "\n";
	print "Teclea el tipo de descuento (por ejemplo, 1% es 0.01):\n";
	$descuento = <STDIN>;
	chop($descuento);
		while ($descuento <= 0)
		{
		print "Es un tanto de descuento no valido. Introduce uno correcto:\n";
		$descuento = <STDIN>;
		chop($descuento);
		}
	print "\n";
	$interes = $descuento / (1 - $descuento);
	print "El tipo de interes equivalente es: $interes";
	exit;
	}
else
	{
	print "Has elegido una opcion no valida.";
	exit;
	}