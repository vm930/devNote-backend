class CreateNoteCodes < ActiveRecord::Migration[5.2]
  def change
    create_table :note_codes do |t|
      t.integer :code_id
      t.integer :note_id

      t.timestamps
    end
  end
end
