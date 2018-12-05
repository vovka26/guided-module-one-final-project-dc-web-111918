class Category < ActiveRecord::Base
  has_many :cards
  has_many :translations, through: :categories_translations
end
