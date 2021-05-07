class CardSerializer
  include FastJsonapi::ObjectSerializer
  attributes :player, :description

  #belongs_to :collection 
  #belongs_to :user, through: :collections
end
