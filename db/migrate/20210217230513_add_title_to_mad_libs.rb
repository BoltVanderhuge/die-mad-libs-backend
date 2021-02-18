class AddTitleToMadLibs < ActiveRecord::Migration[6.1]
  def change
    add_column :mad_libs, :title, :string
    add_column :mad_libs, :description, :string
    add_column :mad_libs, :picture, :string
  end
end
