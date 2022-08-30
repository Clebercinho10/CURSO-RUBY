class Computadora
  #agregamos una variable de clase para
   #realizar un seguimiento de todos los usuarios en nuestra computadora
   @@usuarios = {}
  def initialize(nombre,contraseña)
    #establecemoss las variables de instancia
    @nombre = nombre
    @contraseña=contraseña
    @archivos = {}
    @@usuarios[usuario]= contraseña
  end

  def crear(nombre_archivo)
      time = Time.now
    @archivos[nombre_archivo]=time
    puts "#{nombre_archivo} ha sido creado #{time} por #{@nombre}"

  end

  def Computadora.get_usuarios()
    return @@usuarios

end

mi_computadora =Computadora.new("CPU_USER","clebe@")
