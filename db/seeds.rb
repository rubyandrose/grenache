# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

def headshot_file_url(person_name)
  "https://raw.githubusercontent.com/rubyandrose/template/spec/support/fixtures/headshots/#{person_name}.jpg"
end

users = {}

%w(fred wilma dino pebbles).each do |name|
  users[name.to_sym] = User.create!(email: "no-reply+#{name}@betterment.com", full_name: "#{name.titleize} Flintstone", picture_url: headshot_file_url(name))
end

%w(betty barney bamm-bamm).each do |name|
  users[name.to_sym] = User.create!(email: "no-reply+#{name}@betterment.com", full_name: "#{name.titleize} Rubble", picture_url: headshot_file_url(name))
end
