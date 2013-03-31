class User < ActiveRecord::Base
  attr_accessible :birthdate, :email, :firstname, :lastname
end
