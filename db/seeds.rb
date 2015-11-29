# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Character.destroy_all
Actor.destroy_all
Quote.destroy_all
Family.destroy_all
Spouse.destroy_all
Episode.destroy_all
Season.destroy_all

Family.create(name: "Crawley")

Actor.create(name: "Michelle Dockery")
Actor.create(name: "Laura Carmichael")
Actor.create(name: "Jessica Brown Findlay")
Actor.create(name: "Hugh Boneville")
Actor.create(name: "Elizabeth McGovern")
Actor.create(name: "Rob James-Collier")
Actor.create(name: "Joanne Froggart")
Actor.create(name: "Sophie McShera")
Actor.create(name: "Jim Carter")
Actor.create(name: "Phyllis Logan")
Actor.create(name: "Maggie Smith")
Actor.create(name: "Lesley Nicol")
Actor.create(name: "Dan Stevens")


Character.create(name: "Mary Crawley", title: "Lady", social_class: "Upstairs", actor_id: 1, family_id: 1)
Character.create(name: "Edith Crawley", title: "Lady", social_class: "Upstairs", actor_id: 2, family_id: 1)
Character.create(name: "Sybil Crawley", title: "Lady", social_class: "Upstairs", actor_id: 3, family_id: 1)
Character.create(name: "Robert Crawley", title: "Lord Grantham", social_class: "Upstairs", actor_id: 4, family_id: 1)
Character.create(name: "Cora Crawley", title: "Lady Grantham", social_class: "Upstairs", actor_id: 5, family_id: 1)

Character.create(name: "Thomas Barrow", title: "Underbutler", social_class: "Downstairs", actor_id: 6)
Character.create(name: "Anna Bates", title: "Lady's maid", social_class: "Downstairs", actor_id: 7)
Character.create(name: "Daisy Mason", title: "Undercook", social_class: "Downstairs", actor_id: 8)
Character.create(name: "Charles Carson", title: "Butler", social_class: "Downstairs", actor_id: 9)
Character.create(name: "Elsie Hughes", title: "Housekeeper", social_class: "Downstairs", actor_id: 10)
Character.create(name: "Violet Crawley", title: "Dowager Countess", social_class: "Upstairs", actor_id: 11)
Character.create(name: "Mrs. Patmore", title: "Cook", social_class: "Downstairs", actor_id: 12)
Character.create(name: "Matthew Crawley", title: "Heir", social_class: "Upstairs", actor_id: 13)


Quote.create(description: "What is a weekend?", character_id: 11)
Quote.create(description: "At least I'm not fishing with no bait.", character_id: 1)
Quote.create(description: "I'm not a romantic, but even I concede that the heart does not exist solely for the purpose to pump blood.", character_id: 11)
Quote.create(description: "You've lived your life, and I've lived mine. Now it's time we live them together.", character_id: 13)
Quote.create(description: "Oh, it is you! I thought it was a man in your clothes.", character_id: 11)

