class CategoriesTranslations < ActiveRecord::Base
  belongs_to :translations
  belongs_to :categories
end
