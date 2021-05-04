class UserSerializer
  include FastJsonapi::ObjectSerializer
  attributes :email
  
  has_many :collections 
  has_many :cards, through: :collections
end
 