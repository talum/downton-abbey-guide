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
#

class Character < ActiveRecord::Base
  belongs_to :family
  belongs_to :actor
  has_many :quotes

end
