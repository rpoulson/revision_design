class CreateMemeUrls < ActiveRecord::Migration
  def change
    create_table :meme_urls do |t|
      t.string :url

      t.timestamps
    end
  end
end
