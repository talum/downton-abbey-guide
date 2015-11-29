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

require 'test_helper'

class QuoteTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
