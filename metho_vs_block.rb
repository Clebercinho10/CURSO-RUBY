def convertir_caracter_mayus(cadena)
  puts "#{cadena[0].upcase}#{cadena[1..-1]}"
end
convertir_caracter_mayus("cleber")
convertir_caracter_mayus("sandy")

["juan","pedro"].each {|cadena1| puts "#{cadena1[0].upcase}#{cadena1 [1..-1]}"}
