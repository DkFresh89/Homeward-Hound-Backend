class CreateSightings < ActiveRecord::Migration[6.1]
  def change
    create_table :sightings do |t|
      t.float :latitude
      t.float :longitude
      t.string :description
      t.datetime :time_stamp
      t.belongs_to :missing_flyer, null: false, foreign_key: true, optional: true 
      t.belongs_to :user, null: false, foreign_key: true, optional: true 

      t.timestamps
    end
  end
end
