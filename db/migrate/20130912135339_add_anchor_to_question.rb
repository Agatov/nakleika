class AddAnchorToQuestion < ActiveRecord::Migration
  def change
    add_column :questions, :anchor, :string
  end
end
