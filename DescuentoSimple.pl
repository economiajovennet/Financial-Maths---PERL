######################################################################################################
# Script "DescuentoSimple.pl" - 14/04/2011 by EconomiaJoven.net                                      #
#                                                                                                    #
# This script is under Creative Commons Attribution-NonCommercial-ShareAlike 3.0 Spain license.      #
# http://creativecommons.org/licenses/by-nc-sa/3.0/es/                                               #
#                                                                                                    #
# If you notice a mistake or you want to discuss something, feel free to drop us a line.             #
# info[at]economiajoven[dot]net                                                                      #
######################################################################################################

print "\n";
print "Este es un script PERL para DESCUENTO SIMPLE.\n";
print "Por favor, introduce los datos segun se te pidan.\n";
print "Teclea el capital final (por ejemplo, 10000):\n";
$capfin = <STDIN>;
chop($capfin);
print "\n";
print "Teclea el numero de periodos (por ejemplo, 5):\n";
$periodos = <STDIN>;
chop($periodos);
while ($periodos <= 0)
	{
	print "Es un periodo no valido. Introduce uno correcto:\n";
	$periodos = <STDIN>;
	chop($periodos);
	}
print "\n";
print "Teclea la tasa de descuento (por ejemplo, 1% es 0.01):\n";
$descuento = <STDIN>;
chop($descuento);
while ($descuento <= 0)
	{
	print "Es un tanto de descuento no valido. Introduce uno correcto:\n";
	$descuento = <STDIN>;
	chop($descuento);
	}
print "\n";
$capinicial = $capfin * (1 - ($periodos * $descuento));
print "El capital final es: $capinicial";
exit;