class CreateUsers < ActiveRecord::Migration[5.2]
  def change
    create_table :users do |t|
      t.string :username
      t.string :password_digest
      t.string :fullname
      t.string :bio
      t.string :email
      t.integer :note_id
      t.string :avatar_url

      t.timestamps
    end
  end
end
