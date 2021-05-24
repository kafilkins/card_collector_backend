class CardSerializer
  include FastJsonapi::ObjectSerializer
  attributes :player, :description

  belongs_to :collection 

end
