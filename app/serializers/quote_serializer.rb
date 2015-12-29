class QuoteSerializer < ActiveModel::Serializer
  attributes :id, :description, :character_id, :episode_id

  def attributes
    attributes = super 
    attributes[:character] = object.character.try(:as_json)
    attributes
  end
end
