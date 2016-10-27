products = ["Negan",
 "Glen Eating Pizza",
 "Glen eye out of his head",
 "Abraham",
 "Homero Jay Simpson",
 "Maggie Simpson",
 "Moe",
 "Jhon Snow",
 "Tyrion",
 "Eleven",
 "El Chavo",
 "Don Ramon",
 "Chompiraz"
]
#{{costo: 555 , color=black},{},{} }hashes
products_characteristics ={}
products.each_with_index do |p , i|
  products_characteristics[p] = {#llave = |p| nombre de disfraz
    cost: 10,
    color: "undefined",
    index_product: i
  }
end
shopping_car = {}
user_character = nil
while user_character != "exit"
  puts "Costume Store" '#########################'
  puts '#########################################'
  puts '#########################################'
  puts "Please, type the name of your character"
  user_character = gets.chomp.downcase
  break if user_character == "exit" #rompe el ciclo en el cual nos encontramos, no es buena practica
  #Busca en products el nombre del personaje
  #matched_character = false
  index = 0
  matched_index = []
  until index >= products.length
    if products[index].downcase.include? user_character
      puts "This are your possible costume: Num #{index}. #{products[index]}"
      matched_index << index
    end
      index += 1
  end

  if matched_index.any?
  user_character = -1
    until matched_index.include? user_character
      puts "Please select your costume"
      user_character = gets.chomp.to_i

      if matched_index.include? user_character
        puts "Your costume selection was: #{products[user_character]}"
        puts "Do you want to buy it? #{products_characteristics[products[user_character]][:cost]} (yes/no)"

        if gets.chomp.downcase == "yes"
          shopping_car[products[user_character]] = "purshased"
        end
      else
        puts "That costume does not exit"
      end
    end #if matched_index.any? #Pregunta si este contenedor tiene un elemento si no, no entra al ciclo. retorna true o false
    else
    puts "This item doesn't exit in our shop"
  end
  puts "Your shopping car: " if shopping_car.any?
  puts shopping_car if shopping_car.any?
end
