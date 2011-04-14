######################################################################################################
# Script "CapitalizaCompuesta.pl" - 14/04/2011 by EconomiaJoven.net                                  #
#                                                                                                    #
# This script is under Creative Commons Attribution-NonCommercial-ShareAlike 3.0 Spain license.      #
# http://creativecommons.org/licenses/by-nc-sa/3.0/es/                                               #
#                                                                                                    #
# If you notice a mistake or you want to discuss something, feel free to drop us a line.             #
# info[at]economiajoven[dot]net                                                                      #
######################################################################################################

print "\n";
print "Este es un script PERL para CAPITALIZACION COMPUESTA.\n";
print "Por favor, introduce los datos segun se te pidan.\n";
print "Teclea el capital inicial (por ejemplo, 10000):\n";
$capini = <STDIN>;
chop($capini);
while ($capini <= 0)
	{
	print "Es un capital inicial no valido. Introduce uno correcto:\n";
	$capini = <STDIN>;
	chop($capini);
	}
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
$capfinal = $capini * ((1 + $interes)**$periodos);
print "El capital final es: $capfinal";
exit;