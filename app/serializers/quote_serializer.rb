# == Schema Information
#
# Table name: quotes
#
#  id           :integer          not null, primary key
#  description  :string
#  character_id :integer
#  episode_id   :integer
#  created_at   :datetime         not null
#  updated_at   :datetime         not null
#

class QuoteSerializer < ActiveModel::Serializer
  attributes :id, :description, :context, :character_id, :episode_id

  def attributes
    attributes = super 
    attributes[:character] = object.character.try(:as_json)
    attributes[:episode] = object.episode.try(:as_json)
    attributes
  end
end
