class User < ActiveRecord::Base
  attr_accessible :emails, :name
  emails_regex = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
  validates :name, :presence => true, :length => { :maximum => 50}
  validates :emails, :presence =>true, 
                     :format => { :with => emails_regex},
                     :uniqueness => { :case_sensitive => false}
end
