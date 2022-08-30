require "./ejer_poo2"
require "./participante_factory"
require "./concurso"

concurso =Concurso.new("Chef Peru")
concurso.inscribir_participante("amateur","1343435454","Juan Perez", 20,75,95)
concurso.inscribir_participante("amateur","545465334323","Carlos Olmos",30,55, 78)
concurso.inscribir_participante("profesional","9999343200","Juan Perez",20,75, 34,7)
concurso.inscribir_participante("profesional","111115334322","Andrez",60,55, 34,12)
concurso.inscribir_participante("Master","00043234412356","Cleber Miranda",30,55,42)
concurso.inscribir_participante("Master","004343529283","Juan Campos",10,25, 43)

puts concurso.listar_concursantes
puts

puts concurso.ganador_general
puts

puts concurso.ganador_por_categoria
puts
