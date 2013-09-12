class CreateSettings < ActiveRecord::Migration
  def change
    create_table :settings do |t|
      t.string :phone
      t.string :old_price
      t.string :current_price

      t.timestamps
    end
  end
end
