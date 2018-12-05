Category.destroy_all
Translation.destroy_all
CategoriesTranslation.destroy_all

greetings = Category.find_or_create_by(name: "Greetings")
foods = Category.find_or_create_by(name: "Foods")
directions = Category.find_or_create_by(name: "Directions")


hello = Translation.find_or_create_by(english: "Hello", russian: "Привет", arabic: "مرحبا", french: "Bonjour")
bye = Translation.find_or_create_by(english: "Bye", russian: "Пока", arabic: "ما سلامة", french: "Au revoir")
how_are_you = Translation.find_or_create_by(english: "How are you?", russian: "Как ваши дела?", arabic: "كيف الحال؟", french: "comment ça va?")
im_well_and_you = Translation.find_or_create_by(english: "I am well, and you?", arabic: "انا بخير وأنت", french: "ça va bien et vous?", russian: "Я хорошо. Как Ваши дела?")


hello_translation = CategoriesTranslation.create!(category: greetings, translation: hello)
bye_translation = CategoriesTranslation.create(category: greetings, translation: bye)
how_are_you_translation = CategoriesTranslation.create(category: greetings, translation: how_are_you)
im_well_and_you_translation = CategoriesTranslation.create(category: greetings, translation: im_well_and_you)
