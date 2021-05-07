class CollectionSerializer
  include FastJsonapi::ObjectSerializer
    attributes :title

    #belongs_to :user
    #has_many :cards
end
