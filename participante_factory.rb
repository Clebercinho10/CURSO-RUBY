class ParticipanteFactory
     #métodos self.crear_participante para crear mis participantes
    def self.crear_participante(categoria, Dni,nombre, edad, puntaje_jurado,puntaje_publico,anios_exp)
       case categoria
       when "amateur"
        Amateur.new(Dni, nombre, edad, puntaje_jurado,puntaje_publico)
       when "profesional"
        Profesional.new(Dni, nombre, edad, puntaje_jurado,puntaje_publico,anios_exp)
       when "master"
        Master.new(Dni, nombre, edad, puntaje_jurado,puntaje_publico)
       end
    end
end




