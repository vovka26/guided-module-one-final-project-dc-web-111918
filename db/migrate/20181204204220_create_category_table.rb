class CreateCategoryTable < ActiveRecord::Migration[5.0]
  def change
    create_table :category do |t|
      t.string :category_name
    end
  end
end
