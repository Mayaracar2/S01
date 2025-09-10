10 INPUT "Digite uma temperatura (Celsius): "; temp_celsius
20 temp_kelvin = VAL(temp_celsius) + 273
30 temp_fahrenheit = ((temp_celsius / 5) + VAL(3.55)) * 9

40 PRINT "Sua temperatura em Kelvin: " + temp_kelvin
50 PRINT "Sua temperatura em Fahrenheit: " + temp_fahrenheit
