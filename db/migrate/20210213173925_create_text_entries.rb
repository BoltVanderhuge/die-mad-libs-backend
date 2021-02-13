class CreateTextEntries < ActiveRecord::Migration[6.1]
  def change
    create_table :text_entries do |t|
      t.belongs_to :mad_lib, null: false, foreign_key: true
      t.belongs_to :user, null: false, foreign_key: true
      t.text :user_inputs

      t.timestamps
    end
  end
end
