class CreateBeanstalkCompleteLogos < ActiveRecord::Migration
  def change
    create_table :beanstalk_complete_logos do |t|
      t.string :font
      t.string :size
      t.string :color
      t.string :weight
      t.string :message

      t.timestamps
    end
  end
end
