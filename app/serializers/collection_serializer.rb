class CollectionSerializer
  include FastJsonapi::ObjectSerializer
  attributes :name

  belongs_to :user
  has_many :cards
end
