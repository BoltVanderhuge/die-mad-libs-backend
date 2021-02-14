class AddFormToMadLibs < ActiveRecord::Migration[6.1]
  def change
    add_column :mad_libs, :form, :text
  end
end
