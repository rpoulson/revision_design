class CreateBeanstalkMemes < ActiveRecord::Migration
  def change
    create_table :beanstalk_memes do |t|
      t.string :color
      t.string :text
      t.string :name
      t.string :image
      t.string :message

      t.timestamps
    end
  end
end
