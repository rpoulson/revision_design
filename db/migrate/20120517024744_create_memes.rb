class CreateMemes < ActiveRecord::Migration
  def change
    create_table :memes do |t|
      t.string :color
      t.string :text
      t.string :name
      t.string :image

      t.timestamps
    end
  end
end
