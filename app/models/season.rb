# == Schema Information
#
# Table name: seasons
#
#  id          :integer          not null, primary key
#  summary     :string
#  time_period :string
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#

class Season < ActiveRecord::Base
  has_many :episodes
  
end