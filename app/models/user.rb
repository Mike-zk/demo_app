class User < ActiveRecord::Base
  attr_accessible :emails, :name
end
