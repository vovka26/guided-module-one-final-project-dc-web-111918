class Cli
  attr_accessor :user

  def greeting
    puts "Welcome to PROGRAM_NAME. What is your name?"
    name = self.input
    puts "Thank you, #{name.capitalize}. What language would you like to learn today?"
    language = input
    puts "Great! #{language.capitalize} it is!"
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
