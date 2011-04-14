######################################################################################################
# Script "RelacionTantosNominales.pl" - 14/04/2011 by EconomiaJoven.net                              #
#                                                                                                    #
# This script is under Creative Commons Attribution-NonCommercial-ShareAlike 3.0 Spain license.      #
# http://creativecommons.org/licenses/by-nc-sa/3.0/es/                                               #
#                                                                                                    #
# If you notice a mistake or you want to discuss something, feel free to drop us a line.             #
# info[at]economiajoven[dot]net                                                                      #
######################################################################################################

print "\n";
print "Este es un script PERL para RELACION DE TANTOS NOMINALES.\n";
print "Si quieres hallar el tanto k-esimal i(k), teclea 1.\n";
print "Si quieres hallar el tanto nominal J(k), teclea 2.\n";
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
	$ik = $Jk/$k;
	print "El valor del tanto k-esimal es: $ik";
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
	print "Teclea el valor del tanto k-esimal i(k) (por ejemplo, 1% es 0.01):\n";
	$ik = <STDIN>;
	chop($ik);
	while ($ik <= 0)
		{
		print "Es un valor de tanto k-esimal no valido. Introduce uno correcto:\n";
		$ik = <STDIN>;
		chop($ik);
		}
	print "\n";
	$Jk = $ik*$k;
	print "El valor del tanto nominal es: $Jk";
	exit;
	}
else
	{
	print "Has elegido una opcion no valida.";
	exit;
	}