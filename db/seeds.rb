# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ :name => 'Chicago' }, { :name => 'Copenhagen' }])
#   Mayor.create(:name => 'Daley', :city => cities.first)

NOW = Time.zone.now
NUM_POSTS = 10

# clear the tables -------------------------------------------------------------

[Post].each { |m| m.delete_all }

# insert posts -----------------------------------------------------------------

  NUM_POSTS.times do |n|
    Timecop.travel(NOW - n.days) do
      Post.create({
        :title => 'Post ' + Faker::Lorem.words(8).join(" "),
        :body => Faker::Lorem.sentences(5).join(" "),
        :published => rand(2).to_i
      })
    end
  end