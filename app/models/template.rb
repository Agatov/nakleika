class Template < ActiveRecord::Base
  attr_accessible :title, :title_mini
  attr_accessible :first_trigger_header, :first_trigger_text, :second_trigger_header, :second_trigger_text, :third_trigger_header, :third_trigger_text
  attr_accessible :first_block_header, :first_block_text, :second_block_header, :second_block_text, :third_block_header, :third_block_text
end
