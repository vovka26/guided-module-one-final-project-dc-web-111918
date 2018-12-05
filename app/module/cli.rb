class Cli
  attr_accessor :user

  def greeting
    puts "Welcome to PROGRAM_NAME. What is your name?"
    name = self.input
    puts "Thank you, #{name.capitalize}. What language would you like to learn today?"
    language_choice = input
    puts "Great! #{language_choice.capitalize} it is!"
    puts "What category would you like to practice today?"
    category_choice = input.capitalize.pluralize
    puts "Great choice! Here are your words."

    category_choice_id = Category.where(name: category_choice).pluck(:id).first

    translation_choice_id = CategoriesTranslation.where(category_id: category_choice_id).pluck(:translation_id)

    translation_row = Translation.where(id: translation_choice_id)

    translation_row.collect do |row|
      puts "#{row.english} => #{row.send(language_choice)}"
    end


    # binding.pry
    # puts translation_row.language_choice



    # puts category_choice_id.inspect
            # if language == french
            #   puts "Great #{language} it is!" in french
            # end
            # if language == language_that_does_not_exists
            #   puts "We are apologize. We do not know this language yet. Please come back and check it out later. Or learn one of these languages"
            # show all languages that are available

  end


  def input
    gets.downcase.chomp
  end
end

# binding.pry
