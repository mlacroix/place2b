class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :lastname
      t.string :firstname
      t.string :birthdate
      t.string :email
      t.boolean :admin, :default => false

      t.timestamps
    end
  end
end
