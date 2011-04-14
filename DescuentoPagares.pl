######################################################################################################
# Script "DescuentoPagares.pl" - 14/04/2011 by EconomiaJoven.net                                     #
#                                                                                                    #
# This script is under Creative Commons Attribution-NonCommercial-ShareAlike 3.0 Spain license.      #
# http://creativecommons.org/licenses/by-nc-sa/3.0/es/                                               #
#                                                                                                    #
# If you notice a mistake or you want to discuss something, feel free to drop us a line.             #
# info[at]economiajoven[dot]net                                                                      #
######################################################################################################

print "\n";
print "Este es un script PERL para DESCUENTO DE PAGARES.\n";
print "Si quieres hallar un Descuento Racional Simple, teclea 1.\n";
print "Si quieres hallar un Descuento Racional Compuesto, teclea 2.\n";
print "Si quieres hallar un Descuento Comercial Simple, teclea 3.\n";
print "Si quieres hallar un Descuento Comercial Compuesto, teclea 4.\n";
print "Por favor, escribe ahora el numero de la opcion que desees.\n";
$opcion = <STDIN>;
chop($opcion);
if ($opcion == 1)
	{
	print "\n";
	print "Teclea el numero de dias:\n";
	$dias = <STDIN>;
	chop($dias);
	while ($dias > 360)
		{
		print "Los dias no pueden ser mas de 360. Introduce un valor correcto:\n";
		$dias = <STDIN>;
		chop($dias);
		}
	print "\n";
	print "Teclea el Nominal:\n";
	$nominal = <STDIN>;
	chop($nominal);
	while ($nominal <= 0)
		{
		print "El valor del nominal no es correcto. Introduce un valor correcto:\n";
		$nominal = <STDIN>;
		chop($nominal);
		}
	print "\n";
	print "Teclea el tipo de interes (por ejemplo, 1% es 0.01):\n";
	$interes = <STDIN>;
	chop($interes);
	while ($interes <= 0)
		{
		print "Es un valor del tipo de interes no valido. Introduce uno correcto:\n";
		$interes = <STDIN>;
		chop($interes);
		}
	print "\n";
	$DRS = $nominal/(1+($interes*($dias/360)));
	print "El valor del Descuento Racional Simple es: $DRS";
	exit;
	}
elsif ($opcion == 2)
	{
	print "\n";
	print "Teclea el numero de dias:\n";
	$dias = <STDIN>;
	chop($dias);
	while ($dias <= 360)
		{
		print "Los dias no pueden ser menos de/igual a 360. Introduce un valor correcto:\n";
		$dias = <STDIN>;
		chop($dias);
		}
	print "\n";
	print "Teclea el Nominal:\n";
	$nominal = <STDIN>;
	chop($nominal);
	while ($nominal <= 0)
		{
		print "El valor del nominal no es correcto. Introduce un valor correcto:\n";
		$nominal = <STDIN>;
		chop($nominal);
		}
	print "\n";
	print "Teclea el tipo de interes (por ejemplo, 1% es 0.01):\n";
	$interes = <STDIN>;
	chop($interes);
	while ($interes <= 0)
		{
		print "Es un valor del tipo de interes no valido. Introduce uno correcto:\n";
		$interes = <STDIN>;
		chop($interes);
		}
	print "\n";
	$DRC = $nominal*((1+$interes)**(-$dias/360));
	print "El valor del Descuento Racional Compuesto es: $DRC";
	exit;
	}
elsif ($opcion == 3)
	{
	print "\n";
	print "Teclea el numero de dias:\n";
	$dias = <STDIN>;
	chop($dias);
	while ($dias > 360)
		{
		print "Los dias no pueden ser mas de 360. Introduce un valor correcto:\n";
		$dias = <STDIN>;
		chop($dias);
		}
	print "\n";
	print "Teclea el Nominal:\n";
	$nominal = <STDIN>;
	chop($nominal);
	while ($nominal <= 0)
		{
		print "El valor del nominal no es correcto. Introduce un valor correcto:\n";
		$nominal = <STDIN>;
		chop($nominal);
		}
	print "\n";
	print "Teclea el tipo de descuento (por ejemplo, 1% es 0.01):\n";
	$descuento = <STDIN>;
	chop($descuento);
	while ($descuento <= 0)
		{
		print "Es un valor del tipo de descuento no valido. Introduce uno correcto:\n";
		$descuento = <STDIN>;
		chop($descuento);
		}
	print "\n";
	$DCS = $nominal*(1-($descuento*($dias/360)));
	print "El valor del Descuento Comercial Simple es: $DCS";
	exit;
	}
elsif ($opcion == 4)
	{
	print "\n";
	print "Teclea el numero de dias:\n";
	$dias = <STDIN>;
	chop($dias);
	while ($dias <= 360)
		{
		print "Los dias no pueden ser menos de/igual a 360. Introduce un valor correcto:\n";
		$dias = <STDIN>;
		chop($dias);
		}
	print "\n";
	print "Teclea el Nominal:\n";
	$nominal = <STDIN>;
	chop($nominal);
	while ($nominal <= 0)
		{
		print "El valor del nominal no es correcto. Introduce un valor correcto:\n";
		$nominal = <STDIN>;
		chop($nominal);
		}
	print "\n";
	print "Teclea el tipo de descuento (por ejemplo, 1% es 0.01):\n";
	$descuento = <STDIN>;
	chop($descuento);
	while ($descuento <= 0)
		{
		print "Es un valor del tipo de descuento no valido. Introduce uno correcto:\n";
		$descuento = <STDIN>;
		chop($descuento);
		}
	print "\n";
	$DCC = $nominal*((1-$descuento)**($dias/360));
	print "El valor del Descuento Comercial Compuesto es: $DCC";
	exit;
	}
else
	{
	print "Has elegido una opcion no valida.";
	exit;
	}