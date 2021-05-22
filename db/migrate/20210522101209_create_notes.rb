class CreateNotes < ActiveRecord::Migration[6.1]
  def change
    create_table :notes do |t|
      t.string :title
      t.text :content
      t.integer :level

      t.timestamps
    end
  end
end
