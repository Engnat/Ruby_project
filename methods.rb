@shopping_car = nil
@user_character = nil
@products_characteristics = nil
@products = nil
@products_characteristics = nil

def init
  @products = ["Negan",
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
  @products_characteristics ={}
  @products.each_with_index do |p , i|
    @products_characteristics[p] = {#llave = |p| nombre de disfraz
      cost: rand(10),
      color: "undefined",
      index_product: i
    }
  end
  @shopping_car = {}
end

def print_welcome_msj
  puts "Costume Store" '#########################'
  puts '#########################################'
  puts '#########################################'
  puts "Please, type the name of your character"
  gets.chomp.downcase
end

def find_costumes
  index = 0
  matched_index = []
  until index >= @products.length
    if @products[index].downcase.include? @user_character
      puts "This are your possible costume: Num #{index}. #{@products[index]}"
      matched_index << index
    end
    index += 1
  end
  matched_index
end

def check_and_ask_buy(matched_index)#la funcion llama como parametro a la variable matched_index ya que esta no es una variable global porque esta definida en el while de  abajo
  if matched_index.include? @user_character
    puts "Your costume selection was: #{@products[@user_character]}"
    puts "Do you want to buy it? #{@products_characteristics[@products[@user_character]][:cost]} dineros (yes/no)"

    if gets.chomp.downcase == "yes"
      @shopping_car[@products[@user_character]] = "purshased"
    end
  else
    puts "That costume does not exit"
  end
end

def select_your_order(matched_index)
  if matched_index.any?
    @user_character = -1
    until matched_index.include? @user_character
      puts "Please select your costume"
      @user_character = gets.chomp.to_i
      check_and_ask_buy matched_index
    end #if matched_index.any? #Pregunta si este contenedor tiene un elemento si no, no entra al ciclo. retorna true o false
  else
    puts "This item doesn't exit in our shop"
  end
end

def print_shopping_car
  puts "Your shopping car: " if @shopping_car.any?
  puts @shopping_car if @shopping_car.any?
end

init #Inicializa las variables
while @user_character != "exit"
  @user_character = print_welcome_msj
  break if @user_character == "exit"
  matched_index = find_costumes
  select_your_order matched_index
  print_shopping_car
end
