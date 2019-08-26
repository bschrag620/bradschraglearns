class CreateUsers < ActiveRecord::Migration[5.2]
  def change
    create_table :users do |t|
      t.string :email
      t.string :password_digest
      t.text :bio
      t.integer :role_id

      t.timestamps
    end
  end
end
