class CreateNotes < ActiveRecord::Migration[6.1]
  def change
    create_table :notes do |t|
      t.string :title
      t.string :info
      t.integer :level

      t.timestamps
    end
  end
end
