class Operaciones
  attr_accessor :numero1, :numero2
  def initialize(numero1, numero2)
    @numero1, @numero2 = numero1, numero2
  end
  def pedirDatos
    puts "ingrese el numero1:"
    @numero1 =gets.chomp
    puts "ingrese el numero2:"
    @numero2 =gets.chomp
  end
end
puts pedirDatos
