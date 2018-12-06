class Cli
  attr_accessor :user_name, :language, :category

  def start
    self.greeting

  end

  def greeting
    puts "Welcome to PROGRAM_NAME. What is your name?"
    # binding.pry
    self.user_name = gets.chomp
    self.choose_language
  end

  def choose_language
    puts "Thank you, #{self.user_name.capitalize}. What language would you like to learn today?"
    puts "1. Arabic"
    puts "2. French"
    puts "3. Russian"
    self.language = gets.chomp
    puts "Great choice! Let's start learning #{self.chosen_language_name}."
    self.choose_category
  end

  def choose_category
    puts "What category of words would you like to practice today?"
    puts "1. Foods"
    puts "2. Greetings"
    puts "3. Directions"
    self.category = gets.chomp
    puts "Awesome! #{self.chosen_language_name} it is!"
    self.get_three_random_words.each {|word| puts word}
  end

  def chosen_category_name
    case self.category
    when "1"
      "Foods"
    when "2"
      "Greetings"
    when "3"
      "Directions"
    end
  end

  def chosen_language_name
    case self.language
    when "1"
      "Arabic"
    when "2"
      "French"
    when "3"
      "Russian"
    end
  end

  #find all translation rows from the table
  #ittarate through the rows and save as a pair english_word => chosen_language_translation
  def get_all_category_words
    rows = Category.find_by(name: self.chosen_category_name).translations
    rows.map {|row| "#{row.english} => #{row.send(self.chosen_language_name.downcase)}"}
  end

  #randomize all_category_words and pick three, returns an array
  def get_three_random_words
    self.get_all_category_words.shuffle.first(3)
  end







  # def all_together
  #   puts "Welcome to PROGRAM_NAME. What is your name?"
  #   name = self.input
  #   puts "Thank you, #{name.capitalize}. What language would you like to learn today?"
  #   language_choice = self.input
  #   puts "Great! #{language_choice.capitalize} it is!"
  #   puts "What category would you like to practice today?"
  #   category_choice = self.input.capitalize.pluralize
  #   puts "Great choice! Here are your words."
  #
  #   category_choice_id = Category.where(name: category_choice).pluck(:id).first
  #
  #   translation_choice_id = CategoriesTranslation.where(category_id: category_choice_id).pluck(:translation_id)
  #
  #   translation_row = Translation.where(id: translation_choice_id)
  #
  #   rand_arr = translation_row.shuffle.first(3)
  #
  #   # binding.pry
  #
  #   rand_arr.collect do |row|
  #     puts "#{row.english} => #{row.send(language_choice)}"
  #   end


    # binding.pry
    # puts translation_row.language_choice

  # end


end

# binding.pry
