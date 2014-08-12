# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

User.delete_all
Idea.delete_all
Group.delete_all
Comment.delete_all

User.create(:id=>1, :name => "Luciana", :email=>"luciana123_2002@yahoo.com", :location => "Cleveland, OH", :provider=>"website")
User.create(:id=>2, :name => "Jen", :email=>"test@test.com", :location => "Cleveland, OH", :provider=>"website")
User.create(:id=>3, :name => "Shawn", :email=>"skoscho@gmail.com", :location => "Cleveland, OH", :provider=>"website")
User.create(:id=>4, :name => "Mike", :email=>"Mike.sabo614@gmail.com", :location => "Cleveland, OH", :provider=>"website")
User.create(:id=>5, :name => "Evan", :email=>"devandanger@gmail.com", :location => "Cleveland, OH", :provider=>"website")


Idea.create(:description => 'Shower bubble - ability to take a shower in a bubble where you can walk around',
			:user_id => 1, :display => "public")

idea2 = Idea.create(:description => 'Pregnancy like clothing for men with big belly',
			:user_id => 1, :display => "public")
Comment.create(:body => 'so fashionable!', :stars=>5, :idea_id => idea2.id)

Idea.create(:description => 'Device for women pee standing up',
			:user_id => 1, :display => "public")

Idea.create(:description => 'External body transplant - why not replace a arm or a leg?',
			:user_id => 1,:display => "public")

Idea.create(:description => 'App that reads email out load for me',
			:user_id => 1,:display => "public")

Group.create(:name => "Penquin Tea Party", :user_id => 1)
Group.create(:name => "Idea Time HH Board Members", :user_id => 1)