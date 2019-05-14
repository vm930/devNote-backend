class CreateCodes < ActiveRecord::Migration[5.2]
  def change
    create_table :codes do |t|
      t.integer :note_code_id
      t.string :title
      t.string :style
      t.string :mode
      t.string :code_value

      t.timestamps
    end
  end
end
