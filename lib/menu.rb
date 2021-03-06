class Menu
  attr_reader :menu

  def initialize(menu = potion_menu)
    @menu = menu
  end

  def find_dish(food_name)
    @menu.select { |dish| dish if dish[:dish] == food_name }
  end

  def print_menu
    @menu.select do |items|
      puts "#{items[:dish]} --- £#{items[:price]}"
    end
  end

  private

  def potion_menu
    menu_list = [
      { dish: 'Happily ever after spell', price: 250, quantity: 0 },
      { dish: 'Poison apple', price: 1, quantity: 0 },
      { dish: 'Love potion', price: 350, quantity: 0 },
      { dish: 'Dragon tears', price: 1000, quantity: 0 },
      { dish: 'Find me a prince spell', price: 1500, quantity: 0 },
      { dish: 'Find me a princess spell', price: 1500, quantity: 0 },
      { dish: 'Make me a developer potion', price: 8000, quantity: 0 }
    ]

  end

end
