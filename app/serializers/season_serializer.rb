class SeasonSerializer < ActiveModel::Serializer
  embed :ids, include: true
  attributes :id, :summary, :time_period
  has_many :episodes
end
