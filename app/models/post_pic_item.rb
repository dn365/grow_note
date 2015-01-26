class PostPicItem < ActiveRecord::Base
  belongs_to :post, :class_name => "Post", :foreign_key => "post_id"
  belongs_to :pictrue, :foreign_key => "pictrue_id"
end
