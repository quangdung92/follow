class User < ActiveRecord::Base
  attr_accessible :pass, :username
  
  has_many :relations, :foreign_key => :follower_id
  has_many :following, :through => :relations
  has_many :relations, :class_name => "Relation", :foreign_key => :following_id
  has_many :followers, :through => :relations
 
  
  validates :username, :pass, :presence => true
  validates :username, :pass, :length => { :minimum => 4 }
  validates :username, :uniqueness => true
 
  
    def self.login(username,pass)
    user = find_by_username(username) and user = find_by_pass(pass)   
    if user.nil?
      return nil
    else
      return user
    end
    end
end
