Category.destroy_all
Translation.destroy_all
CategoriesTranslations.destroy_all

hello = Translation.create(english: "Hello", russian: "Привет", arabic: "مرحبا", french: "Bonjour")
