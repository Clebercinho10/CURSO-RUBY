class Participante
    #Método accersor para tener acceso al atributo
    attr_accessor :Dni, :nombre, :edad, :puntaje_jurado, :puntaje_publico
    def initialize(Dni,nombre,edad,puntaje_jurado, puntaje_publico)
      @Dni,@nombre,@edad,@puntaje_jurado,@puntaje_publico = Dni,nombre, edad, puntaje_jurado,puntaje_publico
    end
    #métdo para mostrar para consultar los datos de cada concursante
    def mostrar
      "Concursante #{nombre} con Dni #{Dni}. Puntaje del jurado :#{puntaje_jurado} . Puntaje del Publico #{puntaje_publico}"
    end
    #método para obtener el puntaje final de cada concursante
    def puntaje_final
      puntaje_jurado*0.7 + puntaje_publico*0.3
    end
end

#Aplicamos herencia
class Amateur<Participante
  def initialize(Dni, nombre, edad, puntaje_jurado, puntaje_publico)
    super(Dni, nombre, edad, puntaje_jurado, puntaje_publico)
  end

  def mostrar
    super +"Categoria: Amateur.Puntaje final:#{puntaje_final}."
  end
end

class Profesional<Participante
  attr_accessor :anios_exp
  def initialize(Dni, nombre, edad ,puntaje_jurado, puntaje_publico,anios_exp)
    super(Dni, nombre, edad, puntaje_jurado,puntaje_publico)
    @anios_exp =anios_exp
  end

  def puntaje_final
    if anios_exp >10
      super +2
    else
      super
    end
  end


  def mostrar
    super + "Categoria: profesional. Puntaje final:#{puntaje_final}."
  end
end

class Master<Participante
  def initialize(Dni, nombre, edad, puntaje_jurado, puntaje_publico)
    super(Dni, nombre, edad, puntaje_jurado,puntaje_publico)
  end

  def puntaje_final
    puntaje_jurado
  end

  def mostrar
    super +" categoria: Master. Puntaje final: #{puntaje_final}."
  end
end


