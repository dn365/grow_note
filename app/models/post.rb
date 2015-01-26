class Post < ActiveRecord::Base

  # has_many :pictures, :class_name => "Picture", :dependent => :destroy, :inverse_of => :post
  has_many :post_pic_items, :dependent => :destroy, :inverse_of => :post
  # accepts_nested_attributes_for :pictures, allow_destroy: true

  validates_presence_of :title, :body, :on => :create, :message => "can't be blank"
  validates_uniqueness_of :title, :on => :create, :message => "must be unique"
  validates_length_of :title, :within => 1..45, :on => :create, :message => "must be length can not exceed 45"

end
