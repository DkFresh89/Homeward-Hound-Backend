class CreateUsers < ActiveRecord::Migration[6.1]
  def change
    create_table :users do |t|
      t.string :name
      t.string :address
      t.string :phone_number
      t.boolean :good_sam

      t.timestamps
    end
  end
end
