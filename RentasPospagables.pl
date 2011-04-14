######################################################################################################
# Script "RentasPospagables.pl" - 14/04/2011 by EconomiaJoven.net                                    #
#                                                                                                    #
# This script is under Creative Commons Attribution-NonCommercial-ShareAlike 3.0 Spain license.      #
# http://creativecommons.org/licenses/by-nc-sa/3.0/es/                                               #
#                                                                                                    #
# If you notice a mistake or you want to discuss something, feel free to drop us a line.             #
# info[at]economiajoven[dot]net                                                                      #
######################################################################################################

print "\n";
print "Este es un script PERL para RENTAS POSPAGABLES.\n";
print "Si quieres hallar el Valor Actual de una Renta Unitaria Pospagable, teclea 1.\n";
print "Si quieres hallar el Valor Actual de una Renta Pospagable, teclea 2.\n";
print "Si quieres hallar el Valor Final de una Renta Unitaria Pospagable, teclea 3.\n";
print "Si quieres hallar el Valor Final de una Renta Pospagable, teclea 4.\n";
print "Por favor, escribe ahora el numero de la opcion que desees.\n";
$opcion = <STDIN>;
chop($opcion);
if ($opcion == 1)
	{
	print "\n";
	print "Teclea el numero de periodos:\n";
	$periodos = <STDIN>;
	chop($periodos);
	while ($periodos <= 0)
		{
		print "Es un periodo no valido. Introduce uno correcto:\n";
		$periodos = <STDIN>;
		chop($periodos);
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
	$VARUPos = (1 - ((1 + $interes)**(-$periodos)))/$interes;
	print "El Valor Actual de una Renta Unitaria Pospagable es: $VARUPos";
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
	print "Teclea el numero de periodos:\n";
	$periodos = <STDIN>;
	chop($periodos);
	while ($periodos <= 0)
		{
		print "Es un periodo no valido. Introduce uno correcto:\n";
		$periodos = <STDIN>;
		chop($periodos);
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
	$VARPos = $renta *((1 - ((1 + $interes)**(-$periodos)))/$interes);
	print "El Valor Actual de una Renta Pospagable es: $VARPos";
	exit;
	}
elsif ($opcion == 3)
	{
	print "\n";
	print "Teclea el numero de periodos:\n";
	$periodos = <STDIN>;
	chop($periodos);
	while ($periodos <= 0)
		{
		print "Es un periodo no valido. Introduce uno correcto:\n";
		$periodos = <STDIN>;
		chop($periodos);
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
	$VFRUPos = (((1 + $interes)**($periodos)) - 1)/$interes;
	print "El Valor Final de una Renta Unitaria Pospagable es: $VFRUPos";
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
	print "Teclea el numero de periodos:\n";
	$periodos = <STDIN>;
	chop($periodos);
	while ($periodos <= 0)
		{
		print "Es un periodo no valido. Introduce uno correcto:\n";
		$periodos = <STDIN>;
		chop($periodos);
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
	$VFRPos = $renta *((((1 + $interes)**($periodos)) - 1)/$interes);
	print "El Valor Final de una Renta Pospagable es: $VFRPos";
	exit;
	}
else
	{
	print "Has elegido una opcion no valida.";
	exit;
	}