class Post < ActiveRecord::Base
  attr_accessible :content
  validates :content, :presence => true
  validates :content, :length => { :minimum => 6 }
end
