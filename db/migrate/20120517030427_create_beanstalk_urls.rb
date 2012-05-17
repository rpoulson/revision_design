class CreateBeanstalkUrls < ActiveRecord::Migration
  def change
    create_table :beanstalk_urls do |t|
      t.string :url
      t.string :message

      t.timestamps
    end
  end
end
