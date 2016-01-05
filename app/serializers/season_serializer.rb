# == Schema Information
#
# Table name: seasons
#
#  id          :integer          not null, primary key
#  summary     :string
#  time_period :string
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#  name        :string
#  image_url   :string
#

class SeasonSerializer < ActiveModel::Serializer
  embed :ids, include: true
  attributes :id, :name, :summary, :time_period, :image_url
  has_many :episodes
end
