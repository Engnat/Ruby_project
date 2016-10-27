#print("Hola mundo")
#puts"Hola mundo"
#puts "untring".length
#puts"untring".reverse
my_name = "Engie"
#puts my_name.reverse
=begin
comentario varias lineas
=end
puts my_name #mi comentario XD
#puts my_name.upcase
#puts my_name.downcase
#puts my_name.capitalize
#my_last_name = gets.chomp #Detiene la ejecución para que se ingrese información, como un input
#puts my_name + my_last_name
#puts "¡Hola tu #{my_name}!" #Interpolación de strings
#puts "¡Hola tu " + my_name+ "!"
#puts 1==1
#puts 1!=1
#puts 1>1
#puts 1<1
#puts 1>=1
#puts 1<=1
puts 1.eql? "1"
puts 1.eql? 1#Igualdad.solo compara valores y tipo datos
puts 1.equal? "1"#{solo compara valores. mismo objeto en memoria}
puts 1.equal? 1
puts 10<=>5#
puts 2<=>1
puts 1<=>1

#condicionales
if 1==1
  puts "somos iguales"
end

puts "bla bla bla" if 1==1

uno = 1
dos = 2

if uno == dos
  puts "mentira"
else
  puts "verdad"
end

if uno == dos
  puts "mentira"
elseif uno!=dos
  puts "verdad"
end

if uno>3 then puts "Helloooo" else puts "Holaaa" end

my_blablabla = gets.chomp
case my_blablabla
  when "Una cosa" then puts "lorem lorem"
  when "Otra cosa" then puts "Otro lorem"
  else  puts "Listo"
end

unless my_blablabla == "Otra cosa"#{este condicional "a menos" muestra lo contrario a su condicion es decir si escribo cualquier otra cosa mostrara el valor}
unless my_blablabla == "lalala"
  puts "Muy bien"
else
  puts "Buen trabajo"
end
end


my_array = Array.new
my_array = []
my_hash = Hash.new
my_hash = {name: "Engie" }# name: != "name"
