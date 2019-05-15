class CreateNotes < ActiveRecord::Migration[5.2]
  def change
    create_table :notes do |t|
      t.string :title
      t.integer :user_id
      t.string :date
      t.string :note_value

      t.timestamps
    end
  end
end
