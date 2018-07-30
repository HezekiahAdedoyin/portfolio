class CreateNothingnesses < ActiveRecord::Migration[5.1]
  def change
    create_table :nothingnesses do |t|
      t.string :make
      t.string :model
      t.integer :year

      t.timestamps
    end
  end
end
