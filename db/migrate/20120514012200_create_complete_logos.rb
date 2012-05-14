class CreateCompleteLogos < ActiveRecord::Migration
  def change
    create_table :complete_logos do |t|
      t.string :font
      t.string :size
      t.string :color
      t.string :weight

      t.timestamps
    end
  end
end
