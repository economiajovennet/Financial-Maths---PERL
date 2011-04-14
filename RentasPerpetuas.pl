######################################################################################################
# Script "RentasPerpetuas.pl" - 14/04/2011 by EconomiaJoven.net                                      #
#                                                                                                    #
# This script is under Creative Commons Attribution-NonCommercial-ShareAlike 3.0 Spain license.      #
# http://creativecommons.org/licenses/by-nc-sa/3.0/es/                                               #
#                                                                                                    #
# If you notice a mistake or you want to discuss something, feel free to drop us a line.             #
# info[at]economiajoven[dot]net                                                                      #
######################################################################################################

print "\n";
print "Este es un script PERL para RENTAS PERPETUAS.\n";
print "Si quieres hallar el Valor Actual de una Renta Unitaria Pospagable Perpetua, teclea 1.\n";
print "Si quieres hallar el Valor Actual de una Renta Pospagable Perpetua, teclea 2.\n";
print "Si quieres hallar el Valor Actual de una Renta Unitaria Prepagable Perpetua, teclea 3.\n";
print "Si quieres hallar el Valor Actual de una Renta Prepagable Perpetua, teclea 4.\n";
print "Por favor, escribe ahora el numero de la opcion que desees.\n";
$opcion = <STDIN>;
chop($opcion);
if ($opcion == 1)
	{
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
	$VARUPosP = 1 / $interes;
	print "El Valor Actual de una Renta Unitaria Pospagable Perpetua es: $VARUPosP";
	exit;
	}
elsif ($opcion == 2)
	{
	print "\n";
	print "Teclea el valor del termino constante (por ejemplo, 10000):\n";
	$renta = <STDIN>;
	chop($renta);
		while ($renta <= 0)
		{
		print "Es un valor no valido. Introduce uno correcto:\n";
		$renta = <STDIN>;
		chop($renta);
		}
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
	$VARPosP = $renta / $interes;
	print "El Valor Actual de una Renta Pospagable Perpetua: $VARPosP";
	exit;
	}
elsif ($opcion == 3)
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
	$VARUPreP = (1 + $interes) / $interes;
	print "El Valor Actual de una Renta Unitaria Prepagable Perpetua es: $VARUPreP";
	exit;
	}
elsif ($opcion == 4)
	{
	print "\n";
	print "Teclea el valor del termino constante (por ejemplo, 10000):\n";
	$renta = <STDIN>;
	chop($renta);
		while ($renta <= 0)
		{
		print "Es un valor no valido. Introduce uno correcto:\n";
		$renta = <STDIN>;
		chop($renta);
		}
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
	$VARPreP = $renta * ((1 + $interes) / $interes);
	print "El Valor Actual de una Renta Prepagable Perpetua es: $VARPreP";
	exit;
	}
else
	{
	print "Has elegido una opcion no valida.";
	exit;
	}