Category.destroy_all
Translation.destroy_all
CategoriesTranslation.destroy_all

greeting = Category.find_or_create_by(name: "Greetings")
food = Category.find_or_create_by(name: "Food")
directions = Category.find_or_create_by(name: "Directions")


hello = Translation.find_or_create_by(english: "Hello", russian: "Привет", arabic: "مرحبا", french: "Bonjour")


hello_translation = CategoriesTranslation.create!(category: greeting, translation: hello)
