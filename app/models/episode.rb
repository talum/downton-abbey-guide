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

class Episode < ActiveRecord::Base
  has_many :quotes
  belongs_to :season
end
