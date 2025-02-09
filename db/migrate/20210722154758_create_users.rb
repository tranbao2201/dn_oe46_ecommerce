class CreateUsers < ActiveRecord::Migration[6.1]
  def change
    create_table :users do |t|
      t.string :full_name
      t.string :email, unique: true
      t.string :password_digest
      t.string :phone
      t.integer :role, default: 0
      t.string :address

      t.timestamps
    end
  end
end
