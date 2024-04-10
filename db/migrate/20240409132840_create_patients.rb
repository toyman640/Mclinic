class CreatePatients < ActiveRecord::Migration[7.0]
  def change
    create_table :patients do |t|
      t.string :fullname
      t.integer :age

      t.timestamps
    end
  end
end
