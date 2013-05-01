class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :lastname
      t.string :firstname
      t.string :password_digest
      t.date :birthdate
      t.string :email
      t.string :remember_token
      t.boolean :admin, :default => false

      t.timestamps
    end
  end
end
