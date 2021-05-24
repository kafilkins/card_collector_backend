class CollectionSerializer
  include FastJsonapi::ObjectSerializer
    attributes :title

    has_many :cards
end
