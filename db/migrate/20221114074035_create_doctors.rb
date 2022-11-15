class CreateDoctors < ActiveRecord::Migration[5.2]
  def change
    create_table :doctors do |t|
      t.string :name
      t.string :spec
      t.text :address
      t.integer :clinic_id
      t.timestamps
    end
  end
end
