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

require 'test_helper'

class ActorTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
