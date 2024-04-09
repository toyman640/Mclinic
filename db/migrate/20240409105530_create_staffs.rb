class CreateStaffs < ActiveRecord::Migration[7.0]
  def change
    create_table :staffs do |t|
      t.string :username
      t.string :password_digest
      t.string :password_confirmation
      t.string :role

      t.timestamps
    end
  end
end
