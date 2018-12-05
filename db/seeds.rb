# Category.destroy_all
# Translation.destroy_all
# CategoriesTranslations.destroy_all

greetings = Category.create(categories_translations: "Greetings")
food = Category.create(categories_translations: "Food")
directions = Category.create(categories_translations: "Directions")


hello = Translation.create(english: "Hello", russian: "Привет", arabic: "مرحبا", french: "Bonjour")


hello_translation = CategoriesTranslations.find_or_create_by(hello: hello, category: greetings)
