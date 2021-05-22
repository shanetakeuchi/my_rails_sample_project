class RemoveLevelFromNotes < ActiveRecord::Migration[6.1]
  def change
    remove_column :notes, :level, :integer
  end
end
