class LoadData < ActiveRecord::Migration
  def up
  	entry_1 = Logo.new(:color => "Yellow", :font => "Arial", :size => "7", :weight => "Bold")
  	entry_1.save(:validate => false)
  	entry_2 = Logo.new(:color => "Red", :font => "Times", :size => "2", :weight => "Italic")
  	entry_2.save(:validate => false)
  end

  def down
  	Logo.delete_all
  end
end
