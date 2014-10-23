class User < ActiveRecord::Base
  
  attr_accessible :pass, :username
  # Who am I following?
  has_many :following_relations, :class_name => "Relation", :foreign_key => :follower_id
  has_many :following, :through => :following_relations 
  # Who am I followed by?
  has_many :follower_relations, :class_name => "Relation", :foreign_key => :following_id
  has_many :followers, :through => :follower_relations
  
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
