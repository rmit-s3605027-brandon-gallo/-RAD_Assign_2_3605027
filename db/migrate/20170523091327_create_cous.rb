class CreateCous < ActiveRecord::Migration[5.1]
  def change
    create_table :cous do |t|
      t.string :name
      t.string :prerequisite
      t.string :description
      t.integer :category
      t.integer :location

      t.timestamps
    end
  end
end
