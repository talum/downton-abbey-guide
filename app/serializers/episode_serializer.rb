# == Schema Information
#
# Table name: episodes
#
#  id         :integer          not null, primary key
#  name       :string
#  summary    :string
#  season_id  :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class EpisodeSerializer < ActiveModel::Serializer
  attributes :id, :name, :summary, :season_id, :image_url 
  has_many :quotes

  def attributes
    attributes = super 
    attributes[:season] = object.season.try(:as_json)
    attributes
  end
end
