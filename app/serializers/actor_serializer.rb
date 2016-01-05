class ActorSerializer < ActiveModel::Serializer
  attributes :id, :name, :imdb_link, :image_url
end
