#creamos un cartera de peliculas con un hash con nuestras peliculas favoritas y su calificacion
peliculas = {
  Anaconda:5.3,
  Piratas_del_Caribe: 7.3,
  Invasion:8,
  Halo: 8.5

}
#preguntamos al que queremos hacer con el hash
puts "Qué desea hacer con cartera de peliculas?:"
puts "Añadir"
puts "Actualizar"
puts "Mostrar"
puts "eliminar"

puts "ingrese la respuesta:"
respuesta = gets.chomp
#hacemos una switch para manejar las diferentes respuestas
case respuesta
   when "añadir"
    puts "ingresa el nombre de la pelicula que quiere añadir ?"
    titulo = gets.chomp.to_sym
    #hacemos una verificacion si existe o no la pelicula
    if peliculas[title.to_sym].nil?
    puts "ingresa la calificacion de la pelicula:"
    calificacion =gets.chomp
    #agregamos la nueva pelicula a cartera peliculas
    peliculas[titulo.to_sym]=calificacion.to_i
    else
      puts "La pelicula ya existe! su calificacion es #{peliculas[title.to_sym"]}."
    end
   when "actualizar"
    puts "actualizado"
   when "mostrar"
    puts "peliculas"
   when "eliminar"
    puts "Eliminado"
   else
    puts "error"
   end


