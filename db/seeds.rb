Category.destroy_all
Translation.destroy_all
CategoriesTranslation.destroy_all

greetings = Category.find_or_create_by(name: "Greetings")
foods = Category.find_or_create_by(name: "Foods")
directions = Category.find_or_create_by(name: "Directions")

  # GREETINGS

  hello = Translation.find_or_create_by(english: "Hello", russian: "Привет", arabic: "مرحبا marhaba", french: "Bonjour")

    ######
  good_morning = Translation.find_or_create_by(english: "Good morning", russian: "Доброе утро", arabic: "صباح الخير sabah al-khyr", french: "Bonjour (also means hello)")
  good_night = Translation.find_or_create_by(english: "Good night", russian: "Спокойной ночи", arabic:"تصبح على خير - tsbih 3alaa khayr", french: "Bonne nuit")
  good_evening = Translation.find_or_create_by(english: "Good evening", russian: "Доброе утро", arabic: "مساء الخير  masa' al-khayr", french: "Bonsoir")
  nice_to_meet_you = Translation.find_or_create_by(english: "Nice to meet you", russian: "Приятно познакомиться", arabic: "تشرّفنا tasharrafna", french: "enchanté")

    ######

  bye = Translation.find_or_create_by(english: "Bye", russian: "Пока", arabic: "ما سلامة maa salaama", french: "Au revoir")
  how_are_you = Translation.find_or_create_by(english: "How are you?", russian: "Как ваши дела?", arabic: "كيف الحال؟ kiif al-Haal", french: "comment ça va?")
  im_well_and_you = Translation.find_or_create_by(english: "I am well, and you?", arabic: "انا بخير وأنت anaa bikhayr wa inta/i (m/f)", french: "ça va bien et vous?", russian: "Я хорошо. Как Ваши дела?")

    #FOODS

  breakfast = Translation.find_or_create_by(english: "Breakfast", russian: "Завтрак", arabic: "الفطورal-futoor", french: "petit déjeuner")
  lunch = Translation.find_or_create_by(english: "Lunch", russian: "Обед", arabic: "الغداء al-ghadaa'", french: "le déjeuner/ le repas de midi")
  dinner = Translation.find_or_create_by(english: "Dinner", russian: "Ужин", arabic: "العشاءal-3ashaa'", french: "le dîner / le repas du soir")
  enjoy_your_meal = Translation.find_or_create_by(english: "Enjoy your meal", russian: "Приятного аппетита", arabic: " صحة Sa7a (literally means health)", french: "bon appétit")
  eat = Translation.find_or_create_by(english: "Eat", russian: "Кушать", arabic: "أكل-akil", french: "manger")
  chew = Translation.find_or_create_by(english: "Chew", russian: "Жевать", arabic: "مَضْغ maDgh", french: "mâcher")
  apple = Translation.find_or_create_by(english: "Apple", russian: "Яблоко", arabic: "تُفَّاحَة tufaaHa", french: "Pomme")
  orange = Translation.find_or_create_by(english: "Orange", russian: "Апельсин", arabic: "برتقال burtuQal", french: "orange")

   ############

    #DIRECTIONS

  left = Translation.find_or_create_by(english: "Left", russian: "Лево", arabic: "اليسارal-yisaar", french: "gauche")
  right = Translation.find_or_create_by(english: "Right", russian: "Право", arabic: "اليمين al-yamiin", french: "droite")
  up = Translation.find_or_create_by(english: "Up", russian: "Вверх", arabic: "إلى فوقilaa fauuQ", french: "en haut")
  down = Translation.find_or_create_by(english: "Down", russian: "Вниз", arabic: "DOUBLE CHECK", french: "en bas")
  how_do_i_get_to = Translation.find_or_create_by(english: "How do I get to...", russian: "Как пройти к...?", arabic: "ما هو الطريق ma huwa a-TariiQ", french: "Comment puis-je aller à")
  where = Translation.find_or_create_by(english: "Where", russian: "Где", arabic: "أين؟-ayna", french: "où?")
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
