class AddLikesToTextEntries < ActiveRecord::Migration[6.1]
  def change
    add_column :text_entries, :likes, :integer, :default => 0

  end
end
