=begin class Persona
  #declaramos los metodos de clase
  def self.suggested_names
    ["Pepe", "Pepito", "Sotano"]
  end
    #constructor
  def initialize(nombre, edad)
    @nombre = nombre
    @edad = edad
  end
  #declarar los métodos de instancia- getters para acceder a las propieddes de esta clase
  def nombre
    @nombre
  end

  def edad
    @edad
  end

  #declarar los métodos setters
  #persona.nombre="pepe"
  def nombre=(nombre)
    @nombre = nombre
    self #self hace referencia a  la misma instancia
  end
  def edad=(edad)
    @edad = edad
    self
  end
end
persona = Persona.new("cleber", 23)
puts persona.nombre
puts persona.edad
=end


#reduciendo el codigo anterior a menos codigo
#declaramos nuestra clase
# class Persona
#   #utilizamos un mACRO para  declarar propiedades de esta clase(generando getters y setters para estos atributos)
#   attr_accessor :nombre, :edad

#   #declaramos los metodos de clase
#   def self.suggested_names
#     ["cleber", "Miranda", "crespin"]
#   end
#    #declaramos nuestro constructor
#   def initialize(nombre, edad)
#     @nombre = nombre
#     @edad = edad
#   end
# end

#OTRA FORMA MAS REDUCIDA
class Persona < Struct.new(:nombre, :edad)
  def self.suggested_names
    ["cleber", "mirand", "crespin"]
  end
end

persona = Persona.new("cleber", 25)
puts persona.nombre
puts persona.edad
















