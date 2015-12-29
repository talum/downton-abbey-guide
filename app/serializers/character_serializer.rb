class CharacterSerializer < ActiveModel::Serializer
  embed :ids, include: true
  attributes :id, :name, :title, :social_class, :actor_id, :family_id
  has_many :quotes
  has_one :actor
  has_one :family

end
