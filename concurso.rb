class Concurso #clase para contener los participantes
  def initialize(nombre_concurso)
    attr_accessor :nombre_concurso, :participantes
    @nombre_concurso = nombre_concurso
    @participantes =array.new
  end

  def inscribir_participante(categoria,Dni, nombre, edad, puntaje_jurado,puntaje_publico,anios_exp = nil)
       participantes.push(ParticipanteFactory.crear_participante(categoria,Dni, nombre, edad, puntaje_jurado,puntaje_publico,anios_exp))

  end

  def listar_concursantes
    mensaje= "**  Concurso #{nombre_concurso} ** \n"
    mensaje+="Lista de Concursantes:\n"
    @participantes.each do |participante|
      mensaje+=participante.mostrar + "\n"
    end
    mensaje+="Total de Concursantes :#{participantes.size}"


  end


  def ganador_general
    puntaje_mayor =0
    ganador =nil
    mensaje ="Ganador general del concurso:\n"
    @participantes.each do |participante|
      if participante.puntaje_final> puntaje_mayor
        puntaje_mayor =participante.puntaje_final
        ganador =participante
      end
    end
    mensaje+="#{ganador.nombre} con puntaje final: #{puntaje_mayor}"
  end

  def ganador_por_categoria
    puntaje_mayor_amateur=0
    puntaje_mayor_profesional =0
    puntaje_mayor_master =0

    amateur_ganador=nil
    profesional_ganador=nil
    master_ganador =nil

    mensaje ="Ganadores por categoria:\n"
    @participantes.each do | participante|
      case participante.class.to_s
      when "Amateur"
        if participante.puntaje_final > puntaje_mayor_amateur
          puntaje_mayor_amateur =participante.puntaje_final
          amateur_ganador = participante
        end
      when "Profesional"
        if participante.puntaje_final>puntaje_mayor_profesional
          puntaje_mayor_profesional=participante.puntaje_final
          profesional_ganador = participante
        end
      when "Master"
        if participante.puntaje_final> puntaje_mayor_master
          puntaje_mayor_master=participante.puntaje_final
          master_ganador=participante
        end
      end
    end
      mensaje+="Categoria Amateur: Nombre: #{amateur_ganador.nombre}. PF:#{puntaje_mayor_amateur}. \n"
      mensaje+="Categoria Profesional: Nombre: #{profesional_ganador.nombre}. PF:#{puntaje_mayor_profesional}. \n"
      mensaje+="Categoria Master: Nombre: #{master_ganador.nombre}. PF:#{puntaje_mayor_master}. \n"
  end
end

