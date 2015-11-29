class CharacterSerializer < ActiveModel::Serializer
  attributes :id, :name, :title, :social_class, :actor_id, :family_id
  has_many :quotes

end
