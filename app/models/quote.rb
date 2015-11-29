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

class Quote < ActiveRecord::Base
  belongs_to :episode
  belongs_to :character
end
