# == Schema Information
#
# Table name: spouses
#
#  id           :integer          not null, primary key
#  character_id :integer
#  created_at   :datetime         not null
#  updated_at   :datetime         not null
#

class Spouse < ActiveRecord::Base
end
