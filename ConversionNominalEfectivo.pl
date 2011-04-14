######################################################################################################
# Script "ConversionNominalEfectivo.pl" - 14/04/2011 by EconomiaJoven.net                            #
#                                                                                                    #
# This script is under Creative Commons Attribution-NonCommercial-ShareAlike 3.0 Spain license.      #
# http://creativecommons.org/licenses/by-nc-sa/3.0/es/                                               #
#                                                                                                    #
# If you notice a mistake or you want to discuss something, feel free to drop us a line.             #
# info[at]economiajoven[dot]net                                                                      #
######################################################################################################

print "\n";
print "Este es un script PERL para CONVERSION TANTOS NOMINALES-EFECTIVOS.\n";
print "Si quieres pasar de un tanto nominal J(k) a un tanto anual efectivo (TAE), teclea 1.\n";
print "Si quieres pasar de un tanto anual efectivo (TAE) a un tanto nominal J(k), teclea 2.\n";
print "Por favor, escribe ahora el numero de la opcion que desees.\n";
$opcion = <STDIN>;
chop($opcion);
if ($opcion == 1)
	{
	print "\n";
	print "Teclea la frecuencia de capitalizacion (k):\n";
	$k = <STDIN>;
	chop($k);
	while ($k <= 0)
		{
		print "Es un valor de frecuencia de capitalizacion no valido. Introduce uno correcto:\n";
		$k = <STDIN>;
		chop($k);
		}
	print "\n";
	print "Teclea el valor del tanto nominal J(k) (por ejemplo, 1% es 0.01):\n";
	$Jk = <STDIN>;
	chop($Jk);
	while ($Jk <= 0)
		{
		print "Es un valor de tanto nominal no valido. Introduce uno correcto:\n";
		$Jk = <STDIN>;
		chop($Jk);
		}
	print "\n";
	$tae = ((1+($Jk/$k))**($k))-1;
	print "El valor del tanto anual equivalente (TAE) es: $tae";
	exit;
	}
elsif ($opcion == 2)
	{
	print "\n";
	print "Teclea la frecuencia de capitalizacion (k):\n";
	$k = <STDIN>;
	chop($k);
	while ($k <= 0)
		{
		print "Es un valor de frecuencia de capitalizacion no valido. Introduce uno correcto:\n";
		$k = <STDIN>;
		chop($k);
		}
	print "\n";
	print "Teclea el valor del tanto anual efectivo (TAE) (por ejemplo, 1% es 0.01):\n";
	$tae = <STDIN>;
	chop($tae);
	while ($tae <= 0)
		{
		print "Es un valor de tanto anual efectivo no valido. Introduce uno correcto:\n";
		$tae = <STDIN>;
		chop($tae);
		}
	print "\n";
	$Jk = (((1+$tae)**(1/$k))-1)*$k;
	print "El valor del tanto nominal J(k) es: $Jk";
	exit;
	}
else
	{
	print "Has elegido una opcion no valida.";
	exit;
	}