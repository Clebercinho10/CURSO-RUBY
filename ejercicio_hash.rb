#creamos un histograma
puts "ingresa una cadena: "
text_cadena=gets.chomp

words=text_cadena.split(" ")
frequencies = Hash.new(0)
words.each { |word| frequencies [word]+=1}
frequencies = frequencies.sort_by {|a,b| b }
frequencies.reverse!
frequencies.each { |word,frequency| puts word + " " + frequency.to_s}
#OTRA FORMA

puts "ingrese un texto:"
cadena_text = gets.chomp
#convertimos nuestra cadena de texto en un array para iterar
words = cadena_text.split(" ")
#usamos un hash para contar las palabras lo pondremos un valor predeterminado 0
frequencies = Hash.new(0)
#usamos un each para iterar con el array
words.each {|word| frequencies [word]+=1}
#utilizamos la funcion sort_by para ordenar el hash de frecuencias por recuento de palabras
frequencies = frequencies.sort_by {|a,b| b}
#usamos .reverse para invertir la matriz de frecuencias oredenadas
frequencies.reverse!
#primero debemos convertir el valor de un número a una cadena usando .to_s antes de que podamos concatenarlo.
frequencies.each {|word,frequency| puts word + " " + frequency.to_s}



