class Cli
  attr_accessor :user_name, :language, :category, :words_array, :number_of_words
  def start
    self.greeting
  end

  def greeting
    puts "Welcome to PROGRAM_NAME. What is your name?"
    self.quit_text
    self.user_name = gets.chomp.downcase
    return self.quit if self.user_name == "quit"
    puts ""
    puts "Thank you, #{self.user_name.capitalize}."
    puts ""
    self.choose_language
  end

  def choose_language
    puts "What language would you like to learn today?"
    puts "1. Arabic"
    puts "2. French"
    puts "3. Russian"
    puts ""
    self.language = gets.chomp
    return self.quit if self.language == "quit"
    puts ""
    puts "Great choice! Let's start learning #{self.chosen_language_name}."
    puts ""
    self.choose_category
  end

  def choose_category
    puts "What category of words would you like to practice today?"
    puts "1. Foods"
    puts "2. Greetings"
    puts "3. Directions"
    puts ""
    self.category = gets.chomp
    return self.quit if self.category == "quit"
    puts ""
    puts "Awesome! #{self.chosen_language_name} it is!"
    puts ""
    self.how_many_words
    self.get_random_words
    self.flash_cards

    # self.get_random_words.each {|word| puts word}
  end

  def chosen_language_name
    case self.language
    when "1"
      "Arabic"
    when "2"
      "French"
    when "3"
      "Russian"
    when "quit"
      self.quit
    else
      self.try_again
    end
  end

  def chosen_category_name
    case self.category
    when "1"
      "Foods"
    when "2"
      "Greetings"
    when "3"
      "Directions"
    when "quit"
      self.quit
    else
      self.try_again
    end
  end


  #find all translation rows from the table
  #ittarate through the rows and save as a pair english_word => chosen_language_translation
  def get_all_category_words
    rows = Category.find_by(name: self.chosen_category_name).translations
    rows.map {|row| "#{row.english} => #{row.send(self.chosen_language_name.downcase)}"}
  end

  #randomize all_category_words and pick three, returns an array
  def get_random_words
    self.words_array = self.get_all_category_words.shuffle.first(self.number_of_words.to_i)
  end

  def flash_cards
    i = 0
    while i < self.words_array.length
      # binding.pry
      puts ""
      puts "'n' for next || 'p' for previous || 'quit' to exit"
      puts ""
      user_input = gets.chomp.downcase
      return self.quit if user_input == "quit"
      if user_input == "p" && i == 0
        # binding.pry
        puts "This is the beginning of the words set."
        puts "Please type 'n'."
        puts ""
      elsif user_input == "n"
        puts ""
        puts self.words_array[i]
        i += 1
        if i == self.words_array.length
          puts ""
          puts "This is the end of list."
          puts ""
        end
      elsif user_input ==  "p"
        i -= 1
        puts ""
        puts self.words_array[i]
      else
        self.try_again
      end
    end
  end

  def how_many_words
    puts ""
    puts "How many words would you like to learn today?"
    puts ""
    self.number_of_words = gets.chomp
  end

  def try_again
    puts ""
    puts "It seems it was not an option. Plese try it again!"
    puts ""
  end

  def quit_text
    puts ""
    puts "You can type 'quit' at any time to exit the program."
    puts ""
  end

  def quit
    puts ""
    puts "Fancy quote"
    puts ""
    puts "Good bye!"
    puts ""
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
