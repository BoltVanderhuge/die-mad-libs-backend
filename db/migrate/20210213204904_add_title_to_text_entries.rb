class AddTitleToTextEntries < ActiveRecord::Migration[6.1]
  def change
    add_column :text_entries, :title, :text
  end
end
