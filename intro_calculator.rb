puts "RB Calculator"
operacion = nil
until operacion == "exit" do
  puts "Type your firts operator"
  operador1 = 1
  operador1 = gets.chomp.to_f
  puts "Type your second operator"
  operador2 = 4
  operador2 = gets.chomp.to_f
  puts "Type your operation (sum, rest, mult, div, pow)"
  operacion = gets.chomp
  case operacion
  when "+", "suma", "sumemelos" then puts "La operacion es : #{operador1} #{operacion} #{operador2} = #{operador1+operador2}"
  when "-" , "menos" then puts "La operacion es : #{operador1} #{operacion} #{operador2} = #{operador1-operador2}"
  when "*" then puts "La operacion es : #{operador1} #{operacion} #{operador2} = #{operador1*operador2}"
  when "/" then puts "La operacion es : #{operador1} #{operacion} #{operador2} = #{operador1/operador2}"
  when "pow" then puts "La operacion es : #{operador1} #{operacion} #{operador2} = #{operador1**operador2}"
  end
end
