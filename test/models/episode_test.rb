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

require 'test_helper'

class EpisodeTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
