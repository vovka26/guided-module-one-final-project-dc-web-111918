class Translation < ActiveRecord::Base
  has_many :categories_translations
  has_many :categories, through: :categories_translations
end
