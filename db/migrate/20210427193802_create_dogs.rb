class CreateDogs < ActiveRecord::Migration[6.1]
  def change
    create_table :dogs do |t|
      t.string :name
      t.string :breed
      t.string :size
      t.integer :age
      t.string :temperament
      t.text :image, array: true, default: []
      t.belongs_to :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
