class AddLabelToNotes < ActiveRecord::Migration
  def change
    add_column :notes, :label, :string
  end
end
