class CreateMissingFlyers < ActiveRecord::Migration[6.1]
  def change
    create_table :missing_flyers do |t|
      t.float :latitude
      t.float :longitude
      t.boolean :found
      t.boolean :reward
      t.string :description
      t.belongs_to :dog, null: false, foreign_key: true

      t.timestamps
    end
  end
end
