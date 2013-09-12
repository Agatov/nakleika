class CreateReports < ActiveRecord::Migration
  def change
    create_table :reports do |t|
      t.string :username
      t.string :avatar
      t.text :content

      t.timestamps
    end
  end
end
