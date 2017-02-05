class CreateUsers < ActiveRecord::Migration[5.0]
  def change
    create_table :users do |t|
      t.string :name
      t.string :email
      t.integer :wins, default: 0
      t.integer :losses, default: 0
      t.string :password_digest

      t.timestamps
    end
  end
end
