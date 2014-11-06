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

User.create(:id=>2, :name => "Luciana", :email=>"luciana123_2002@yahoo.com", :location => "Cleveland, OH", :provider=>"website")
Group.create(:name => "Penquin Tea Party", :user_id => 1)
Group.create(:name => "Idea Time HH Board Members", :user_id => 1)

User.create(:id=>8, :name => "Jen", :email=>"test@test.com", :location => "Cleveland, OH", :provider=>"website")
User.create(:id=>11, :name => "Shawn", :email=>"skoscho@gmail.com", :location => "Cleveland, OH", :provider=>"website")
User.create(:id=>1, :name => "Mike", :email=>"Mike.sabo614@gmail.com", :location => "Cleveland, OH", :provider=>"website")
User.create(:id=>3, :name => "Evan", :email=>"devandanger@gmail.com", :location => "Cleveland, OH", :provider=>"website")


Idea.create(:description => 'Shower bubble - ability to take a shower in a bubble where you can walk around',:user_id => 2, :display => "public")
idea2 = Idea.create(:description => 'Pregnancy like clothing for men with big belly',:user_id => 2, :display => "public")
Comment.create(:body => 'so fashionable!', :stars=>5, :idea_id => idea2.id)
Idea.create(:description => 'Device for women pee standing up', :user_id => 2, :display => "public")
Idea.create(:description => 'Marriage Insurance',:user_id => 11, :display => "public", :id => 19)
Idea.create(:description => 'External body transplant - why not replace a arm or a leg?',:user_id => 1,:display => "public")
Idea.create(:description => 'App that reads email out load for me', :user_id => 1,:display => "public")

=begin
(20, 'Keep My Change', 'luciana123_2002', '2012-09-19 02:38:28', 1, 1, 2, 1, NULL, '0000-00-00 00:00:00'),
(21, 'Washer and Dryer machine in one', 'luciana123_2002', '2012-09-19 02:38:28', 1, 1, 2, 1, NULL, '2012-10-24 12:55:30'),
(22, 'Augmented Reality picture with your friend', 'DailyPush', '2012-09-19 02:38:28', 1, 1, 4, 1, NULL, '0000-00-00 00:00:00'),
(23, 'Light Bulb over people''s desk in the office', 'getSabotaged', '2012-09-19 02:38:28', 1, 1, 1, 1, NULL, '2012-10-24 22:23:58'),
(24, 'IdeaTime.us Domain', 'luciana123_2002', '2012-09-19 02:38:28', 1, 1, 2, 1, NULL, '2012-10-23 23:25:05'),
(25, 'More Pink on website', 'DailyPush', '2012-09-19 02:38:28', 1, 1, 4, 1, NULL, '2012-10-24 01:49:28'),
(26, 'Swim up bar in the CLE', 'JeneticCode', '2012-09-19 02:38:28', 1, 1, 6, 1, NULL, '2012-10-24 22:28:01'),
(27, 'Convince Luciana Pink is gross', 'JeneticCode', '2012-09-19 02:38:28', 1, 1, 6, 1, NULL, '0000-00-00 00:00:00'),
(28, 'Expand this site so that we allow groups. Each group has many members and many i', 'getSabotaged', '2012-09-19 02:38:28', 1, 1, 1, 1, NULL, '2012-10-24 02:33:57'),
(29, 'Add worst idea trophy image to the site', 'JeneticCode', '2012-09-19 02:38:28', 1, 1, 6, 1, NULL, '2012-10-23 20:26:54'),
(30, 'Universal Language', 'getSabotaged', '2012-09-19 02:38:28', 1, 1, 1, 1, NULL, '0000-00-00 00:00:00'),
(31, 'Specialty Zoo For Penguins Only', 'MightyAnger', '2012-09-19 02:38:28', 1, 1, 8, 1, NULL, '2013-02-25 22:14:15'),
(32, 'With text highlighted, pressing ctrl+S will change it to the "Sarcastic" style', 'getSabotaged', '2012-09-19 02:38:28', 1, 1, 1, 1, NULL, '2012-12-04 03:49:34'),
(33, 'Stop putting Deer Crossing Signs On Busy Streets', 'MightyAnger', '2012-09-19 02:38:28', 1, 1, 8, 1, NULL, '2012-10-23 21:35:39'),
(34, 'Dolphins on Wheels', 'MightyAnger', '2012-09-19 02:38:28', 1, 1, 8, 1, NULL, '0000-00-00 00:00:00'),
(35, 'Dog collar with leash built in', 'skoscho', '2012-09-19 02:38:28', 1, 1, 7, 1, NULL, '0000-00-00 00:00:00'),
(36, 'THE Remote Catcher ', 'getSabotaged', '2012-09-19 02:38:28', 1, 1, 1, 1, NULL, '0000-00-00 00:00:00'),
(37, 'Crutches with rounded bottom. Kind of like this  |-----) instead of |--------', 'getSabotaged', '2012-09-19 02:38:28', 1, 1, 1, 1, NULL, '2012-10-24 22:23:35'),
(38, 'A lake that is "slightly" salty so it can inhabit both salt and freshwater fish', 'skoscho', '2012-09-19 02:38:28', 1, 1, 7, 1, NULL, '0000-00-00 00:00:00'),
(39, 'Chinese fast food with a drive through', 'skoscho', '2012-09-19 02:38:28', 1, 1, 7, 1, NULL, '2012-10-24 22:27:24'),
(40, 'Grid the forests to prevent wildfires', 'skoscho', '2012-09-19 02:38:28', 1, 1, 7, 1, NULL, '0000-00-00 00:00:00'),
(41, 'Turn ski slopes into a C1 Kayak courses in the summer and charge big $$$', 'JeneticCode', '2012-09-19 02:38:28', 1, 1, 6, 1, NULL, '0000-00-00 00:00:00'),
(42, 'To eliminate the need for blood drives, we should take it from animals.', 'skoscho', '2012-09-19 02:38:28', 1, 1, 7, 1, NULL, '2012-12-04 03:49:31'),
(43, 'Built-in computer cord', 'bsurtz', '2012-09-19 02:38:28', 1, 1, 10, 1, NULL, '0000-00-00 00:00:00'),
(44, 'Magnetic headphones', 'skoscho', '2012-09-19 02:38:28', 1, 1, 7, 1, NULL, '2012-12-04 03:49:27'),
(45, 'The fisher app', 'skoscho', '2012-09-19 02:38:28', 1, 1, 7, 1, NULL, '2013-02-25 22:14:49'),
(46, 'The haggler.', 'tjhadley15', '2012-09-19 02:38:28', 1, 1, 9, 1, NULL, '0000-00-00 00:00:00'),
(47, 'Plant pleaser ', 'getSabotaged', '2012-09-19 02:38:28', 1, 1, 1, 1, NULL, '0000-00-00 00:00:00'),
(48, 'Smart card', 'luciana123_2002', '2012-09-19 02:38:28', 1, 1, 2, 1, NULL, '2012-11-20 03:15:36'),
(49, 'Air service ', 'skoscho', '2012-09-19 02:38:28', 1, 1, 7, 1, NULL, '2012-10-23 21:32:26'),
(50, 'Just in time food ordering from remote control', 'skoscho', '2012-09-19 02:38:28', 1, 1, 7, 1, NULL, '0000-00-00 00:00:00'),
(51, 'Anti-radiation baby wrap', 'luciana123_2002', '2012-09-19 02:38:28', 1, 1, 2, 1, NULL, '2012-10-23 21:11:31'),
(52, 'Bathroom at the airport (like a gym bathroom)', 'luciana123_2002', '2012-09-19 02:38:28', 1, 1, 2, 1, NULL, '0000-00-00 00:00:00'),
(53, 'Cordless Everything (headphones, chargers, etc).', 'luciana123_2002', '2012-09-19 02:38:28', 1, 1, 2, 1, NULL, '0000-00-00 00:00:00'),
(54, 'Company that thinks up awesome names for products/training classes', 'luciana123_2002', '2012-09-19 02:38:28', 1, 1, 2, 1, NULL, '0000-00-00 00:00:00'),
(55, '16 hour energy drink - Coffee, Espresso and REDBULL - Call it "The Heart Stopper"', 'luciana123_2002', '2012-09-19 02:38:28', 1, 1, 2, 1, NULL, '0000-00-00 00:00:00'),
(56, 'a coffee cup that brews its own coffee  ', 'luciana123_2002', '2012-09-19 02:38:28', 1, 1, 2, 1, NULL, '0000-00-00 00:00:00'),
(57, 'mobile (portable) oil change place', 'luciana123_2002', '2012-09-19 02:38:28', 1, 1, 2, 1, NULL, '2013-02-25 22:12:03'),
(58, 'Global online/mobile wishlist', 'luciana123_2002', '2012-09-19 02:38:28', 1, 1, 2, 1, NULL, '0000-00-00 00:00:00'),
(59, 'Giant parachute able to land airplanes safely in emergency situations.', 'luciana123_2002', '2012-09-19 02:38:28', 1, 1, 2, 1, NULL, '2012-10-23 23:22:51'),
(60, 'TV that shuts itself off when not watching', 'luciana123_2002', '2012-09-19 02:38:28', 1, 1, 2, 1, NULL, '0000-00-00 00:00:00'),
(61, 'app that controls all of the TVs in your house', 'luciana123_2002', '2012-09-19 02:38:28', 1, 1, 2, 1, NULL, '0000-00-00 00:00:00'),
(62, 'app that controls all of the TVs in your home', 'luciana123_2002', '2012-09-19 02:38:28', 1, 1, 2, 1, NULL, '0000-00-00 00:00:00'),
(63, 'Paint that will only stick to certain primer --> no need to tape anymore!', 'luciana123_2002', '2012-09-19 02:38:28', 1, 1, 2, 1, NULL, '2013-01-14 18:21:09'),
(64, 'Cat litter that will clean and sanitize the cat when finished.  Even if it doesnt, really, who is gonna know?', 'luciana123_2002', '2012-09-19 02:38:28', 1, 1, 2, 1, NULL, '2012-12-04 03:49:10'),
(65, 'GPS tracking stamps - stamp your kids hands before school!', 'luciana123_2002', '2012-09-19 02:38:28', 1, 1, 2, 1, NULL, '0000-00-00 00:00:00'),
(66, 'Solar power mobile phones, or at least a solar charger', 'luciana123_2002', '2012-09-19 02:38:28', 1, 1, 2, 1, NULL, '0000-00-00 00:00:00'),
(67, 'Gamification of disposables... Garbage cans which make cool swish and bank shot sounds', 'luciana123_2002', '2012-09-19 02:38:28', 1, 1, 2, 1, NULL, '0000-00-00 00:00:00'),
(68, 'A fast food restaurant that has a meal combo with ice cream and french fries', 'luciana123_2002', '2012-09-19 02:38:28', 1, 1, 2, 1, NULL, '2012-12-04 03:48:57'),
(69, 'Watches for dogs on their collar.  Could be fashionable or could be pragmatic (ie can have GPS in it or heart rate calculator)', 'luciana123_2002', '2012-09-19 02:38:28', 1, 1, 2, 1, NULL, '2012-10-23 21:32:18'),
(70, 'An Unsinkable boat', 'luciana123_2002', '2012-09-19 02:38:28', 1, 1, 2, 1, NULL, '0000-00-00 00:00:00'),
(71, 'Running a fiber optic cable from here to Mars', 'luciana123_2002', '2012-09-19 02:38:28', 1, 1, 2, 1, NULL, '0000-00-00 00:00:00'),
(72, 'A site for college students to upload essays by teachers for others to use. Categorized by school and class. ', 'luciana123_2002', '2012-09-19 02:38:28', 1, 1, 2, 1, NULL, '0000-00-00 00:00:00'),
(73, 'traffic jam delivery ', 'luciana123_2002', '2012-09-19 02:38:28', 1, 1, 2, 1, NULL, '2012-10-23 21:38:51'),
(74, 'Shelves that can tweet and report on contents weight change.', 'luciana123_2002', '2012-09-19 02:38:28', 1, 1, 2, 1, NULL, '2012-10-23 21:11:00'),
(75, 'groceries gps', 'luciana123_2002', '2012-09-19 02:38:28', 1, 1, 2, 1, NULL, '0000-00-00 00:00:00'),
(76, 'A map to show your location, using GPS.  You can also change the year of the map to view your location throughout history. (add historic facts of your location, battles, railroads, and see how things have changed)', 'luciana123_2002', '2012-09-19 02:38:28', 1, 1, 2, 1, NULL, '2013-02-25 22:15:04'),
(77, 'A mirror you can turn on and off', 'luciana123_2002', '2012-09-19 02:38:28', 1, 1, 2, 1, NULL, '2012-12-04 03:48:48'),
(78, 'Clothing that never goes out of style', 'getSabotaged', '2012-09-19 03:30:04', 1, 1, 1, 1, NULL, '2012-10-25 01:47:22'),
(79, 'Bring Plan9 and inferno to mobile devices', 'DailyPush', '2012-09-19 04:11:57', 1, 1, 10, 1, NULL, '2012-10-23 21:07:01'),
(80, 'Tv station for pets who are home alone', 'TheeRealDG', '2012-09-27 22:07:05', 1, 1, 5, 1, NULL, '2012-10-24 22:28:55'),
(81, 'New Career: Organize My Digital Life!', 'JeneticCode', '2012-09-28 23:47:15', 1, 1, 8, 1, NULL, '2012-10-23 23:21:58'),
(82, 'Bottle of liquid to pour on your car during the rain - to automatically clean your vehicle.  Harness the power of mother nature!', 'skoscho', '2012-10-15 14:24:49', 1, 1, 11, 1, NULL, '2012-11-20 03:04:41'),
(83, 'A coffee travel mug that comes with the top that you can chill/freeze.  It will cool the scolding hot coffee as you drink it.  As it warms up, the coffee will be cooling down - hence always the perfect temperature.', '0', '2012-10-17 20:52:10', 1, 1, 11, 1, NULL, '0000-00-00 00:00:00'),
(84, 'Instead of constantly having to mix tuna with mayonnaise for sandwiches/salad etc.  How about just feeding the tuna fish mayonnaise from the start. (hat tip Bill Sanchez)', 'MightyAnger', '2012-10-17 21:11:15', 1, 1, 3, 1, NULL, '2012-10-24 22:29:10'),
(89, 'Bring back the term "fo shizzle"', 'getSabotaged', '2012-10-23 21:03:56', 1, 1, 1, 1, NULL, '2012-11-20 03:10:15'),
(88, 'a see through toaster oven', 'getSabotaged', '2012-10-23 20:27:23', 1, 1, 1, 1, NULL, '2013-08-03 16:44:09'),
(90, 'External human body organ transplant - legs, arms, etc', 'luciana123_2002', '2012-10-23 23:29:12', 1, 1, 2, 1, NULL, '2013-01-15 01:47:45'),
(91, 'A disposable device to allow women to pee standing up on public bathrooms', 'luciana123_2002', '2012-10-23 23:42:55', 1, 1, 2, 1, NULL, '2012-12-04 03:49:49'),
(94, 'everyone should have an exotic animal. (Read Comments)', 'getSabotaged', '2012-10-25 20:27:06', 1, 1, 1, 1, NULL, '2012-10-27 00:00:30'),
(96, 'Refillable candle ''discs'' so you can reuse candle jars.', 'TheeRealDG', '2012-11-14 19:44:04', 1, 1, 5, 1, NULL, '2012-12-19 20:16:24'),
(98, 'A tree that is a cross between Oak and Pine, so that it always looks good in any season.', 'skoscho', '2012-11-20 03:22:27', 1, 1, 11, 1, NULL, '2013-02-25 22:14:07'),
(106, 'Delivery of gasoline to my vehicle - gas delivery - call us and we come fill up your tank!', 'MyDomainList', '2012-12-04 03:52:59', 1, 1, 20, 1, NULL, '2012-12-19 16:32:04'),
(102, 'OakPine Tree', 'skoscho', '2012-11-20 03:23:24', 1, 1, 11, 1, NULL, '2013-02-25 22:14:12'),
(104, 'destroy evan''s reputation on stack overflow', 'getSabotaged', '2012-11-20 20:12:39', 1, 1, 1, 1, NULL, '2012-12-02 17:44:54'),
(105, 'Develop simple arcade machines which charge per hour oppose to per game. Lease them to bars, misc facilities.', 'MightyAnger', '2012-11-29 18:27:44', 1, 1, 3, 1, NULL, '2012-12-04 03:48:25'),
(107, 'Sweet Zone ', '', '2012-12-17 22:14:20', 1, 1, 29, 1, NULL, '2012-12-17 22:15:21'),
(108, 'Reverse auction for purchasing cars', '', '2012-12-19 14:54:50', 1, 1, 29, 1, NULL, '2012-12-19 23:39:57'),
(109, 'Help me decide - API''s that learn as people use them. Where should i go to college? Where should I go on vacation? Help people answer everyday questions with crowd sourced data.', 'bsurtz', '2012-12-19 17:49:18', 1, 1, 14, 1, NULL, '2012-12-19 23:41:43'),
(110, 'genetically engineer different colored lightning bugs', 'bsurtz', '2012-12-19 17:53:06', 1, 1, 14, 1, NULL, '2012-12-19 20:20:00'),
(111, 'App gumball machine App', 'bsurtz', '2012-12-19 17:57:27', 1, 1, 14, 1, NULL, '2012-12-19 23:40:00'),
(112, 'Bathroom toilet system which will analyze what you left it and figures our a whole bunch of biometric stats.  ', '', '2012-12-19 20:26:24', 1, 1, 29, 1, NULL, '2013-02-15 18:23:46'),
(113, 'SLR Camera that uploads photos automatically by 3G/4G + social capabilities', '', '2013-01-14 17:24:33', 1, 1, 29, 1, NULL, '2013-01-14 17:24:33'),
(114, 'Portable hand massager', '', '2013-01-14 17:26:28', 1, 1, 29, 1, NULL, '2013-01-28 16:04:39'),
(115, 'Wash your whites/colors together. Different water temps/bleach/detergent for each side.', '', '2013-01-14 20:26:20', 1, 1, 29, 1, NULL, '2013-01-28 16:04:57'),
(116, 'Detachable heels for women shoes, so we can take it off in case we need to run', 'MyDomainList', '2013-01-15 19:00:02', 1, 1, 20, 1, NULL, '2013-01-28 16:04:36'),
(117, 'Events Made Manly', '', '2013-01-16 20:17:44', 1, 1, 29, 1, NULL, '2013-01-17 01:24:06'),
(118, 'Smart clothes - rfid tagged clothes combined with readers in closets, dressers, and washing machines.', '', '2013-01-16 20:18:05', 1, 1, 29, 1, NULL, '2013-01-28 16:04:28'),
(119, 'Application to give free hugs to people in close proximity to you who also download the free hugs app - better sense of community w/those around you! :-)', '', '2013-01-16 21:04:01', 1, 1, 29, 1, NULL, '2013-01-19 01:19:51'),
(120, 'Do heroic things for Merica'' so that we have more National Holidays', 'getSabotaged', '2013-01-16 21:43:35', 1, 1, 1, 1, NULL, '2013-03-15 03:42:03'),
(121, 'Have a way for you to test that the ''Mute'' setting is turned on during phone calls', 'getSabotaged', '2013-01-16 21:46:26', 1, 1, 1, 1, NULL, '2013-01-19 01:19:48'),
(122, 'Create a Ponzi scheme that defrauds the Fraudulent people on Wall Street', 'getSabotaged', '2013-01-16 21:55:34', 1, 1, 1, 1, NULL, '2013-01-23 03:27:56'),
(123, 'Electrified  phone case ', 'DailyPush', '2013-01-16 22:23:26', 1, 1, 10, 1, NULL, '2013-01-19 01:19:35'),
(124, 'Automated toilet paper dispenser - you can pick the type of paper from the machine - guilted, strong, softl. Only right correct amount of paper is dispensed. ', 'MyDomainList', '2013-01-22 23:09:29', 1, 1, 20, 1, NULL, '2013-02-25 22:08:47'),
(125, 'A beer-energy drink', 'avinpr', '2013-01-23 03:37:21', 1, 1, 19, 1, NULL, '2013-01-28 16:03:40'),
(126, 'Smaller, portable, snow plow for cars - its the 21st century, we have lighter materials and better cars that can handle a small portable plow for the front of cars.  ', '', '2013-01-23 19:18:51', 1, 1, 29, 1, NULL, '2013-01-23 19:20:17'),
(127, 'Laundry baskets with sides that fold down.  Perfect for when you need to get to clothes on the bottom or middle of the stack of clothes.', '', '2013-01-23 19:19:51', 1, 1, 29, 1, NULL, '2013-01-25 02:12:41'),
(128, 'A cup that always keeps your coffee warm without using a warming plate', '', '2013-01-28 16:02:22', 1, 1, 29, 1, NULL, '2013-01-28 16:03:46'),
(129, 'Steak flavoring for chicken: make your chicken taste like steak.', '', '2013-02-15 18:01:01', 1, 1, 29, 1, NULL, '2013-02-15 18:23:39'),
(130, 'A screen saver that counts down each hour. And as it gets closer to the next hour it starts beeping like a bomb. When it hits 00:00 it explodes for a few seconds before beginning next countdown', 'getSabotaged', '2013-02-15 18:23:29', 1, 1, 1, 1, NULL, '2013-03-19 02:36:05'),
(131, 'A website that has ''How To''s'' for explaining technical things to non-technical people. Gives examples that are easy to understand. The new kind of Wikipedia!', 'getSabotaged', '2013-02-22 16:10:01', 1, 1, 1, 1, NULL, '2013-03-13 19:11:01'),
(132, 'e-Stamp: Charge $0.01 for every email you send.  It will eliminate spam.  ', '', '2013-02-25 22:05:31', 1, 1, 29, 1, NULL, '2013-02-25 22:07:40'),
(133, 'Bacon flavor raw vegetables - this idea is brought to you by Nicole lynch ', 'MyDomainList', '2013-03-05 23:15:14', 1, 1, 20, 1, NULL, '2013-03-13 20:52:52'),
(134, 'Worldwide temperature control center', 'MyDomainList', '2013-03-05 23:16:06', 1, 1, 20, 1, NULL, '2013-03-13 19:10:28'),
(135, 'An erasable highlighter.', 'TheRealDG', '2013-03-08 13:02:08', 1, 1, 29, NULL, NULL, '2013-03-27 01:36:08'),
(136, 'an app that reads my emails for me', 'luciana123_2002', '2013-03-13 19:08:39', 1, 1, 29, NULL, NULL, '2013-05-08 22:39:14'),
(138, 'I want a personal exerciser instead of a personal trainer', 'MyDomainList', '2013-03-15 00:46:18', 1, 1, 20, 1, NULL, '2013-03-15 00:46:18'),
(139, 'A hard drive that you can install in your brain. You can then wirelessly/bluetooth submit data to be stored, such as technology books or classy one liners.', '', '2013-03-25 17:36:34', 1, 1, 29, NULL, NULL, '2013-03-29 18:09:04'),
(140, 'Dump the Drunks. A wheelbarrow transport system for the downtown drunkies.', 'JeneticCode', '2013-03-27 01:35:00', 1, 1, 8, NULL, NULL, '2013-03-29 18:08:47'),
(141, 'The Clothes Folder 3000', 'JeneticCode', '2013-04-02 00:35:33', 1, 1, 8, NULL, NULL, '2013-04-07 00:19:35'),
(142, 'a service that photoshops random things in your photos for you', '0', '2013-04-03 00:51:23', 0, 1, 8, NULL, NULL, '2013-04-03 00:51:23'),
(143, 'a service that photoshops random things in your photos for you', 'JeneticCode', '2013-04-03 00:51:27', 1, 1, 8, NULL, NULL, '2013-04-03 00:51:27'),
(144, 'Flavorful, edible play-dough.  Make the cleanup of Play-dough simple by calling the dogs over to eat it off of the floor.  They would if it tasted better.  Also, when you make a play-dough pizza, it would taste like it!', 'skoscho', '2013-04-07 00:20:59', 1, 1, 11, NULL, NULL, '2013-04-12 15:14:25'),
(145, 'An app for guys that lets them track their wife or girlfriend''s mood over the month.  It will give them some indicators and feedback.', 'skoscho', '2013-04-07 00:24:14', 1, 1, 11, NULL, NULL, '2013-04-12 15:14:11'),
(146, 'Spaceship video game where you have to speak to shoot. "Pew" "Pew" would should two lasers.', 'MightyAnger', '2013-04-11 04:35:31', 1, 1, 3, NULL, NULL, '2013-04-12 15:07:41'),
(147, 'LEDs on meeting room doors so you don''t look like a creep slowly opening the door to see if you''re in the right meeting.', 'MightyAnger', '2013-04-11 04:37:41', 1, 1, 3, NULL, NULL, '2013-04-11 04:37:41'),
(148, 'Mobile Oil Change service expansion... Add Dry Cleaning service, Car Cleaning service.', 'MightyAnger', '2013-04-11 04:49:12', 1, 1, 3, NULL, NULL, '2013-06-13 20:44:28'),
(149, 'A two-way usb stick to share amongst computers.  Immediately mounts a drive on both computers and syncs data across them.', 'MightyAnger', '2013-04-11 13:20:20', 1, 1, 3, NULL, NULL, '2013-04-12 15:05:24'),
(150, 'Laundry room in the gym by Rachel ', 'MyDomainList', '2013-04-11 23:01:16', 1, 1, 20, NULL, NULL, '2013-04-12 15:08:18'),
(151, 'Install large magnets into cars and have them automatically reverse their polarity with other cars'' magnets so they can''t crash into each other.  Could be applicable to other items as well.', 'skoscho', '2013-04-12 15:17:35', 1, 1, 11, NULL, NULL, '2013-06-13 18:21:27'),
(152, 'A TV that gives off cool air', '', '2013-04-16 19:06:56', 1, 1, 29, NULL, NULL, '2013-04-16 19:06:56'),
(153, 'A hose that can be pulled out of your refrigerator''s filtered water dispenser so you can fill up all kinds of containers which would previously not fit in under that dispenser. (e.g. Keurig water tank, Pitchers)', '', '2013-05-01 15:41:45', 1, 1, 29, NULL, NULL, '2013-05-01 15:41:45'),
(154, 'The Happy Hippy Farmer Market Bus - 1.) come up with badass name (already done) 2.) acquire an old school bus 3.) fill it up with different coolers to keep vegetables cool 4.) drive around and sell to dense populated areas. 4.) boom, profit.', '', '2013-05-01 15:44:49', 1, 1, 29, NULL, NULL, '2013-05-08 22:44:02'),
(155, 'Man candles: charcoal grill, sawdust, tacklebox, oil change, steakhouse.', '', '2013-05-08 20:26:01', 1, 1, 29, NULL, NULL, '2013-05-08 22:27:10'),
(156, 'Flavor sprays for vegetables that kids won''t otherwise eat', '', '2013-05-08 20:35:31', 1, 1, 29, NULL, NULL, '2013-05-09 15:24:44'),
(157, 'Veggie Blasters', '', '2013-05-08 20:35:43', 1, 1, 29, NULL, NULL, '2013-05-08 20:35:57'),
(158, 'Uncomfortable mattress alarm bed... Ensures you are uncomfortable and get out of bed. ', 'MightyAnger', '2013-05-08 22:06:01', 1, 1, 3, NULL, NULL, '2013-08-03 17:16:13'),
(159, 'Scheduled text messages. ', 'MightyAnger', '2013-05-08 22:11:04', 1, 1, 3, NULL, NULL, '2013-05-08 22:11:04'),
(160, 'Runners Mile Distance stickers for the car, but for more normal mileage - like.. "1.2", ".5", etc.   - instead of this crap: http://rlv.zcache.com/26_2_miles_sticker-ra966debc070847ab8f8daa02191579f5_v9waf_8byvr_512.jpg', 'skoscho', '2013-05-28 23:36:35', 1, 1, 11, NULL, NULL, '2013-06-06 23:44:42'),
(161, 'quiet potato chip bags', '', '2013-06-06 17:21:29', 1, 1, 29, NULL, NULL, '2013-06-13 22:42:14'),
(162, 'A GPS navigation system that bypasses high crime areas.', 'skoscho', '2013-06-06 23:44:29', 1, 1, 11, NULL, NULL, '2013-06-13 21:07:57'),
(163, 'Cleaning workout... Similar to how Zumba combined dance with workout', 'MyDomainList', '2013-06-12 13:07:48', 1, 1, 20, NULL, NULL, '2013-06-13 21:07:51'),
(164, 'A loaf of bread that is half white/half wheat.  ', 'TheeRealDG', '2013-06-12 20:04:42', 1, 1, 5, NULL, NULL, '2013-06-13 21:52:31'),
(165, 'Sandal-socks  - sock-like shoes with a thin layer of rubber (like a sandal) on the bottom.  See the comments for more details.', '', '2013-06-13 19:34:27', 1, 1, 29, NULL, NULL, '2013-06-13 22:29:32'),
(166, 'A whole line of clothes that are based on comfy clothes but are fancy.  Sweatpants which look like dress pants (which already exists).', 'MightyAnger', '2013-06-13 19:36:42', 1, 1, 3, NULL, NULL, '2013-08-08 22:00:21'),
(167, 'Sand Tire - tires filled with sand = never go flat and a built-in winterizer.', '', '2013-06-13 19:45:06', 1, 1, 29, NULL, NULL, '2013-06-13 22:38:53'),
(168, 'Tablets with keyboards on the back where you hold it from.', '0', '2013-06-13 19:47:43', 0, 1, 3, NULL, NULL, '2013-06-13 19:47:43'),
(169, 'A sporkife. Yeh you know what this means.', 'MightyAnger', '2013-06-13 19:50:49', 1, 1, 3, NULL, NULL, '2013-06-13 22:33:01'),
(170, 'Freezable straw', '', '2013-06-13 19:53:16', 1, 1, 29, NULL, NULL, '2013-08-08 22:10:49'),
(171, 'The Loyal Chip -  an option instead of castration - Haha', 'luciana123_2002', '2013-06-14 01:46:58', 1, 1, 2, NULL, NULL, '2013-06-14 01:46:58'),
(172, 'Refrigerated car trunk..', 'MyDomainList', '2013-07-25 21:45:05', 1, 1, 20, NULL, NULL, '2014-04-11 17:20:26'),
(173, 'No smoke and driving', 'MyDomainList', '2013-07-26 15:04:31', 1, 1, 20, NULL, NULL, '2013-08-03 16:45:25'),
(174, 'Option on the radio that searches only stations playing music ', 'MyDomainList', '2013-08-07 13:16:24', 1, 1, 20, NULL, NULL, '2014-04-11 17:20:35'),
(175, 'Monitor with two sides, you can view look at it from the front or back', 'luciana123_2002', '2013-12-20 20:48:40', 1, 1, 2, NULL, NULL, '2014-04-11 17:19:57'),
(176, 'Lipstick with nutritional value. mmmm good and healthy!', 'luciana123_2002', '2013-12-20 20:49:16', 1, 1, 2, NULL, NULL, '2014-02-14 03:08:50'),
(177, 'Wearable items with built-in heater ...pants, gloves, sweaters, etc', 'MyDomainList', '2014-01-06 18:11:11', 1, 1, 20, NULL, NULL, '2014-01-06 18:11:11'),
(178, 'pregnancy like clothing for men with big belly', 'luciana123_2002', '2014-02-14 02:54:06', 1, 1, 2, NULL, NULL, '2014-04-11 17:19:42'),
(179, 'Flavored bread - like peanut butter and jelly flavored bread. That way there is no sticky mess!', '', '2014-03-14 14:22:29', 1, 1, 29, NULL, NULL, '2014-04-11 17:19:30'),
(180, 'Taco Clip - Device that allows you to cleanly eat tacos in the car.  It clips the back portion of the taco (or chalupa) closed so the contents don''t fall onto your lap while you are driving. ', '', '2014-04-23 14:02:41', 1, 1, 29, NULL, NULL, '2014-08-07 20:59:01'),
(181, 'A shower bubble where u can walk around for about an hour while taking a warm shower... Ahhh.. Think about the therapeutic benefits!', 'MyPilatesPal', '2014-06-26 11:51:17', 1, 1, 35, NULL, NULL, '2014-08-07 22:51:20'),
(182, 'Diaper monitor .. It regulates weight and smell of diaper and notifies when it needs change..', 'MyPilatesPal', '2014-06-26 11:53:04', 1, 1, 35, NULL, NULL, '2014-06-26 11:53:04'),
(183, 'Women beer belly - Jen how did you do that?', 'luciana123_2002', '2014-08-06 20:21:44', 1, 1, 2, NULL, NULL, '2014-08-07 20:18:48'),
(184, 'Fancy velcro leather straps to put around wraps to put around flip flops. Flip flops for the business casual person.', '', '2014-08-07 20:13:42', 1, 1, 29, NULL, NULL, '2014-08-07 20:33:49'),
#(185, 'USB Stick which when plugged into your machine mimics a mouse.  Makes extremely tiny movements which prevents your machine from going to sleep.', '', '2014-08-07 20:39:50', 1, 1, 29, NULL, NULL, '2014-08-07 20:39:50'),
(186, 'Along the idea of a laugh track, implement "ooh and ahhh" reels during obscure olympic/less popular games as a social experiment to enhance the game for others.  For instance, I have no idea when something great/bad happens in figure skating so give me a ', '', '2014-08-07 20:43:48', 1, 1, 29, NULL, NULL, '2014-08-07 20:43:48'),
=end
#(187, 'Starbucks loyalty type card so that you can cash and move to the front of a line after several purchases.', '', '2014-08-07 20:50:54', 1, 1, 29, NULL, NULL, '2014-08-07 22:31:54'),
#(188, 'Ice football (h/t to George Martin), they have ice hockey then field hockey.  Add the ice element to regular football.', '', '2014-08-07 20:56:54', 1, 1, 29, NULL, NULL, '2014-08-07 20:56:54'),
#(189, 'An app for soliciting people to beat up bullies', '', '2014-08-07 21:03:18', 1, 1, 29, NULL, NULL, '2014-08-07 21:03:26'),
#(190, 'A service that provides a temporary boyfriend/girlfriend', '', '2014-08-07 21:16:26', 1, 1, 29, NULL, NULL, '2014-08-07 21:16:26'),
#(191, 'meatball on a stick', 'skoscho', '2014-08-07 21:58:26', 1, 1, 11, NULL, NULL, '2014-08-07 21:59:38'),
#(192, 'dating site for gamers', 'skoscho', '2014-08-07 22:01:00', 1, 1, 11, NULL, NULL, '2014-08-07 22:01:00'),
#(193, 'Match managers with employees that are compatible ', 'getSabotaged', '2014-08-07 22:12:24', 1, 1, 1, NULL, NULL, '2014-08-07 22:12:24'),
#(194, 'Baby wild animal subscription service.  Pay subscription fee to be caretaker to baby animal.  Send it back when it becomes too big or you''re bored with it.', 'MightyAnger', '2014-08-08 15:56:07', 1, 1, 3, NULL, NULL, '2014-08-08 19:33:37');


Idea.create(:description => 'Baby wild animal subscription service.  Pay subscription fee to be caretaker to baby animal.  Send it back when it becomes too big or you''re bored with it.',:user_id => 3,:display => "public")
Idea.create(:description => 'Match managers with employees that are compatible',:user_id => 1,:display => "public")
Idea.create(:description => 'Dating site for gamers',:user_id => 11,:display => "public")
Idea.create(:description => 'meatball on a stick',:user_id => 11,:display => "public")
Idea.create(:description => 'A service that provides a temporary boyfriend/girlfriend',:user_id => 1,:display => "public")
Idea.create(:description => 'An app for soliciting people to beat up bullies',:user_id => 1,:display => "public")
Idea.create(:description => 'Ice football (h/t to George Martin), they have ice hockey then field hockey.  Add the ice element to regular football.',:user_id => 3,:display => "public")
Idea.create(:description => 'Starbucks loyalty type card so that you can cash and move to the front of a line after several purchases.',:user_id => 11,:display => "public")

Idea.create(:description => 'USB Stick which when plugged into your machine mimics a mouse.  Makes extremely tiny movements which prevents your machine from going to sleep.
',:user_id => 1,:display => "public")