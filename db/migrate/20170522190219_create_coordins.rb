class CreateCoordins < ActiveRecord::Migration[5.1]
  def change
    create_table :coordins do |t|
      t.string :name
      t.string :email
      t.string :password

      t.timestamps
    end
  end
end
