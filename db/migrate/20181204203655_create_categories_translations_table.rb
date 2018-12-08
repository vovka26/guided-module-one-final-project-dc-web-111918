class CreateCategoriesTranslationsTable < ActiveRecord::Migration[5.0]
  def change
    create_table :categories_translations do |t|
      t.integer :translation_id
      t.integer :category_id
    end
  end
end
