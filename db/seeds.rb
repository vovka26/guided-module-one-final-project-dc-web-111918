Category.destroy_all
Translation.destroy_all
CategoriesTranslation.destroy_all

greetings = Category.find_or_create_by(name: "Greetings")
foods = Category.find_or_create_by(name: "Foods")
directions = Category.find_or_create_by(name: "Directions")

  # GREETINGS

hello = Translation.find_or_create_by(english: "Hello", russian: "Привет", arabic: "مرحبا", french: "Bonjour")

  ######
good_morning = Translation.find_or_create_by(english: "Good morning", russian: "Доброе утро", arabic: "", french: "")
good_night = Translation.find_or_create_by(english: "Good night", russian: "Спокойной ночи", arabic: "", french: "")
good_evening = Translation.find_or_create_by(english: "Good evening", russian: "Доброе утро", arabic: "", french: "")
nice_to_meet_you = Translation.find_or_create_by(english: "Nice to meet you", russian: "Приятно познакомиться", arabic: "", french: "")

  ######

bye = Translation.find_or_create_by(english: "Bye", russian: "Пока", arabic: "ما سلامة", french: "Au revoir")
how_are_you = Translation.find_or_create_by(english: "How are you?", russian: "Как ваши дела?", arabic: "كيف الحال؟", french: "comment ça va?")
im_well_and_you = Translation.find_or_create_by(english: "I am well, and you?", arabic: "انا بخير وأنت", french: "ça va bien et vous?", russian: "Я хорошо. Как Ваши дела?")

  #FOODS

breakfast = Translation.find_or_create_by(english: "Breakfast", russian: "Завтрак", arabic: "", french: "")
lunch = Translation.find_or_create_by(english: "Lunch", russian: "Обед", arabic: "", french: "")
dinner = Translation.find_or_create_by(english: "Dinner", russian: "Ужин", arabic: "", french: "")
enjoy_your_meal = Translation.find_or_create_by(english: "Enjoy your meal", russian: "Приятного аппетита", arabic: "", french: "")
eat = Translation.find_or_create_by(english: "Eat", russian: "Кушать", arabic: "", french: "")
chew = Translation.find_or_create_by(english: "Chew", russian: "Жевать", arabic: "", french: "")
apple = Translation.find_or_create_by(english: "Apple", russian: "Яблоко", arabic: "", french: "")
orange = Translation.find_or_create_by(english: "Orange", russian: "Апельсин", arabic: "", french: "")

 ############

  #DIRECTIONS

left = Translation.find_or_create_by(english: "Left", russian: "Лево", arabic: "", french: "")
right = Translation.find_or_create_by(english: "Right", russian: "Право", arabic: "", french: "")
up = Translation.find_or_create_by(english: "Up", russian: "Вверх", arabic: "", french: "")
down = Translation.find_or_create_by(english: "Down", russian: "Вниз", arabic: "", french: "")
how_do_i_get_to = Translation.find_or_create_by(english: "How do I get to...", russian: "Как пройти к...?", arabic: "", french: "")
where = Translation.find_or_create_by(english: "Where", russian: "Где", arabic: "", french: "")

 ############

hello_translation = CategoriesTranslation.create!(category: greetings, translation: hello)
bye_translation = CategoriesTranslation.create(category: greetings, translation: bye)
how_are_you_translation = CategoriesTranslation.create(category: greetings, translation: how_are_you)
im_well_and_you_translation = CategoriesTranslation.create(category: greetings, translation: im_well_and_you)
good_morning_translatioon = CategoriesTranslation.create(category: greetings, translation: good_morning)
good_night_translation = CategoriesTranslation.create(category: greetings, translation: good_night)
good_evening_translation = CategoriesTranslation.create(category: greetings, translation: good_evening)
nice_to_meet_you_translation = CategoriesTranslation.create(category: greetings, translation: nice_to_meet_you)
breakfast_translation = CategoriesTranslation.create(category: foods, translation: breakfast)
lunch_translation = CategoriesTranslation.create(category: foods, translation: lunch)
dinner_translatin = CategoriesTranslation.create(category: foods, translation: dinner)
enjoy_your_meal_translation = CategoriesTranslation.create(category: foods, translation: enjoy_your_meal)
eat_translation =  CategoriesTranslation.create(category: foods, translation: eat)
chew_translation =  CategoriesTranslation.create(category: foods, translation: chew)
apple_translation = CategoriesTranslation.create(category: foods, translation: apple)
orange_translation = CategoriesTranslation.create(category: foods, translation: orange)
left_translation = CategoriesTranslation.create(category: directions, translation: left)
right_translation = CategoriesTranslation.create(category: directions, translation: right)
up_translation = CategoriesTranslation.create(category: directions, translation: up)
down_translation = CategoriesTranslation.create(category: directions, translation: down)
how_do_i_get_to_translation = CategoriesTranslation.create(category: directions, translation: how_do_i_get_to)
where_translation = CategoriesTranslation.create(category: directions, translation: where)
