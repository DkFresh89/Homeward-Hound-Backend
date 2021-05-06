class CreateSightings < ActiveRecord::Migration[6.1]
  def change
    create_table :sightings do |t|
      t.float :latitude
      t.float :longitude
      t.string :description
      t.string :time_stamp, null: true, optional: true
      t.string :date, null: true, optional: true
      t.belongs_to :missing_flyer, null: true, foreign_key: true, optional: true 
      t.belongs_to :user, null: true, foreign_key: true, optional: true 

      t.timestamps
    end
  end
end
