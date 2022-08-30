class Calculadora
  #un initialize es un método que se llama automáticamente cada
  #vez que new se utiliza

  def initialize()
    puts('                                           ')
    puts('                                           ')
    puts('                    Calculadora            ')
    puts('-------------------------------------------')
    puts('| 1) Suma                                 |')
    puts('| 2) Resta                                |')
    puts('| 3) Multiplicación                       |')
    puts('| 4) Division                             |')
    puts('| 5) Salir                                |')
    puts('-------------------------------------------')
    puts('Ingresa una opcion:')
    #las variables de instancia se definen dentro  de la clase y se
    #inicializan cada vez que se crea un objeto de esa clase.Estas
    #variables se reconocen porque están precedidas del símbolo @
    #la variable @opcion toma la opcion que ingreso el usuario.

    @opcion =gets.chomp
    @opcion = @opcion.to_i
    @n1 = 0,
    @n2= 0
  end
  #inicia la definicion del método
  def calcular()
    #aplicamos el ciclo while para que mientras continuar sea igual a verdadero
    #y cumpla la condición de que la opcion ingresada sea mennor que 5, le pida al
    #usuario que ingrese dos numeros para que realize la operacion
    continue = true
    while continue == true
      if @opcion>0 && @opcion<5
        print("ingrese el primer numero:")
        @n1 = gets.chomp
        @n1 = @n1.to_i
        print("ingrese el segundo numero: ")
        @n2 = gets.chomp
        @n2 = @n2.to_i
      end
      #En esta condicion, si ingresa una opción mayor a 4 sale de la calculadora
      if @opcion > 4
        continue =false
      end
      #Aplicamos el Case para las opciones y segun lo que ingrese el usuario,
      #este realizará la operacion
      #Luego del print, llamamos al método para que inicialize con el menú
      case @opcion
          when 1
              then resultado =@n1+@n2
                    print ("el resultado es:#{resultado} \n")
                    initialize
          when 2
              then resultado =@n1 -@n2
                    print("El resultado es: #{resultado} \n")
                    initialize
          when 3
              then resultado = @n1*@n2
                    print("El resultado es: #{resultado}\n")
                    initialize
          when 4
              then resultado =@n1/@n2
                    print("El resultado es:#{resultado} \n")
                    initialize
        end
     end
  end
end

calcu =Calculadora.new()
calcu.calcular
gets()



