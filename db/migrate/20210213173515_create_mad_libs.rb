class CreateMadLibs < ActiveRecord::Migration[6.1]
  def change
    create_table :mad_libs do |t|
      t.text :story

      t.timestamps
    end
  end
end
