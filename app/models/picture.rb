class Picture < ActiveRecord::Base
  belongs_to :post, :class_name => "Post", :foreign_key => "post_id"
  mount_uploader :pic, PictureUploader

  validates_presence_of :post, :on => :create, :message => "can't be blank"
end
