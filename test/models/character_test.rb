# == Schema Information
#
# Table name: characters
#
#  id           :integer          not null, primary key
#  name         :string
#  title        :string
#  social_class :string
#  actor_id     :integer
#  family_id    :integer
#  birthdate    :date
#  deathdate    :date
#  image_url    :string
#  created_at   :datetime         not null
#  updated_at   :datetime         not null
#  bio          :string
#

require 'test_helper'

class CharacterTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
