class CreateFoodstuffs < ActiveRecord::Migration[5.2]
  def change
    create_table :foodstuffs do |t|
      t.text :name
      t.string :image
      t.integer :kcal, :default => 0

      t.timestamps
    end
  end
end
