class User < ApplicationRecord: 
    has_secure_password
  
    attr_accessible
      
    validates_uniqueness_of
end
