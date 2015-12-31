class EpisodeSerializer < ActiveModel::Serializer
  attributes :id, :name, :summary, :season_id 
  has_many :quotes

  def attributes
    attributes = super 
    attributes[:season] = object.season.try(:as_json)
    attributes
  end
end
