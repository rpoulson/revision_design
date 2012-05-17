class CreateMemes < ActiveRecord::Migration
  def change
    create_table :memes do |t|
      t.string :color
      t.string :text
      t.string :name

      t.timestamps
    end
  end
end
