class CreatePostPicItems < ActiveRecord::Migration
  def change
    create_table :post_pic_items do |t|
      t.integer :post_id
      t.integer :pictrue_id

      t.timestamps
    end
  end
end
