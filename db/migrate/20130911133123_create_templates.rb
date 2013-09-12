class CreateTemplates < ActiveRecord::Migration
  def change
    create_table :templates do |t|
      t.string :title
      t.string :title_mini

      t.string :first_trigger_header
      t.text :first_trigger_text
      t.string :second_trigger_header
      t.text :second_trigger_text
      t.string :third_trigger_header
      t.text :third_trigger_text

      t.string :first_block_header
      t.text :first_block_text
      t.string :second_block_header
      t.text :second_block_text
      t.string :third_block_header
      t.text :third_block_text
      t.string :fourth_block_header
      t.text :fourth_block_text



      t.timestamps
    end
  end
end
