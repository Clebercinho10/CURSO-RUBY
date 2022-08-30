# class Mamifero
#   def respirar
#     puts "inspirar, espirar"
#   end
# end

# #el simbolo < indica
# #gato es una subclase de Mamifero
# class Gato < Mamifero
#   def maullar
#     puts "Miaaaaauua"
#   end
# end

# cribas =Gato.new
# cribas.respirar
# cribas.maullar

#SOBREESCRITURA DE MÉTODOS

# class Ave
#   def asear
#     puts "Me estoy limpiando mis plumas"
#   end

#   def volar
#     puts "Estoy volando"
#   end
# end

# class Pinguino <Ave
#   def volar
#     puts "lo siento, no soy capaza de volar"
#   end
# end

# p=Pinguino.new
# p.asear
# p.volar

#SUPER
# class Bicicleta
#   attr_reader :marchas, :ruedas, :asientos
#   def initialize(marchas =1)
#     @ruedas =2
#     @asientos =1
#     @marchas =marchas
#   end
# end
# class  Tandem< Bicicleta
#   def initialize(marchas)
#   super
#     @asientos =2
#   end
# end

# t=Tandem.new(2)
# puts t.marchas
# puts t.ruedas
# puts t.asientos
# b =Bicicleta.new
# puts b.marchas
# puts b.ruedas
# puts b.asientos

class Persona
  attr_accessor :nombre, :edad, :sexo
  def initialize(nombre, edad, sexo)
    @nombre, @edad, @sexo= nombre, edad,sexo
  end
end

class Estudiante< Persona
    attr_accessor :matricula, :horas
    def initialize(nombre, edad, sexo,matricula, horas)
      super(nombre, edad, sexo)
      @matricula =matricula
      @horas = horas
    end
end

#creando objetos
a =Persona.new("cleber ",24,"M")
b =Estudiante.new("Marcos", 35, "M","20384837483-3",25)
puts "los datos de la persona son :"
puts a.nombre
puts a.edad
puts a.sexo

puts "los datos del estudiante son:"
puts b.nombre
puts b.edad
puts b.sexo
puts b.matricula
puts b.horas










