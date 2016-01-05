# == Schema Information
#
# Table name: actors
#
#  id         :integer          not null, primary key
#  name       :string
#  imdb_link  :string
#  image_url  :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class ActorSerializer < ActiveModel::Serializer
  attributes :id, :name, :imdb_link, :image_url
end
