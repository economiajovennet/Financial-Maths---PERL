######################################################################################################
# Script "CapitalizaSimple.pl" - 14/04/2011 by EconomiaJoven.net                                     #
#                                                                                                    #
# This script is under Creative Commons Attribution-NonCommercial-ShareAlike 3.0 Spain license.      #
# http://creativecommons.org/licenses/by-nc-sa/3.0/es/                                               #
#                                                                                                    #
# If you notice a mistake or you want to discuss something, feel free to drop us a line.             #
# info[at]economiajoven[dot]net                                                                      #
######################################################################################################

print "\n";
# Presenting the script "Simple Capitalization" and the typing instructions
print "Este es un script PERL para CAPITALIZACION SIMPLE.\n";
print "Por favor, introduce los datos segun se te pidan.\n";

# You type the capital at moment zero
print "Teclea el capital inicial (por ejemplo, 10000):\n";

# We always chop the keyboard inputs to avoid errors
$capini = <STDIN>;
chop($capini);

# You check the capital and force to re-type if it's incorrect
while ($capini <= 0)
	{
	print "Es un capital inicial no valido. Introduce uno correcto:\n";
	$capini = <STDIN>;
	chop($capini);
	}
print "\n";

# You type the number of periods
print "Teclea el numero de periodos (por ejemplo, 5):\n";
$periodos = <STDIN>;
chop($periodos);
while ($periodos <= 0)

# You check the periods and force to re-type if they're incorrect
	{
	print "Es un periodo no valido. Introduce uno correcto:\n";
	$periodos = <STDIN>;
	chop($periodos);
	}
print "\n";

# You type the interest rate
print "Teclea el tipo de interes (por ejemplo, 1% es 0.01):\n";
$interes = <STDIN>;
chop($interes);

# You check the interest rate and force to re-type if it's incorrect
while ($interes <= 0)
	{
	print "Es un tipo de interes no valido. Introduce uno correcto:\n";
	$interes = <STDIN>;
	chop($interes);
	}
print "\n";

# The script does the math and it shows the results
$capfinal = $capini * (1 + ($periodos * $interes));
print "El capital final es: $capfinal";
exit;