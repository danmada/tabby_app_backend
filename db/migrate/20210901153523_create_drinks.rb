class CreateDrinks < ActiveRecord::Migration[6.1]
  def change
    create_table :drinks do |t|
      t.belongs_to :bar, null: false, foreign_key: true
      t.string :drink_type
      t.float :price

      t.timestamps
    end
  end
end
