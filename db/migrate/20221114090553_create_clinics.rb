class CreateClinics < ActiveRecord::Migration[5.2]
  def change
    create_table :clinics do |t|
      t.integer :number
      t.string :clinic_type
      t.string :doc
      t.text :data

      t.timestamps
    end
  end
end
