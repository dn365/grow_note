class Pictrue < ActiveRecord::Base
  mount_uploader :pic, PictrueUploader
  has_many :post_pic_items, :class_name => "PostPicItem"
end
