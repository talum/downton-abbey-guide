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

class CharacterSerializer < ActiveModel::Serializer
  embed :ids, include: true
  attributes :id, :name, :title, :social_class, :actor_id, :image_url, :bio
  has_many :quotes
  has_one :actor
  has_one :family

end
