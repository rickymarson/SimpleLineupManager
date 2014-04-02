

Editor.delete_all
Writer.delete_all
Producer.delete_all
Theme.delete_all
Format.delete_all
Status.delete_all
Story.delete_all

editor1 = Editor.create(:username => ' Unassigned')
editor2 = Editor.create(:username => 'Billie Cohen', :email => 'billie_cohen@condenast.com')
editor3 = Editor.create(:username => 'Kris Fordham', :email => 'krisanne_fordham@condenast.com')
editor4 = Editor.create(:username => 'Alexis Clark', :email => 'alexis_clark@condenast.com')

puts "Created editors"

writer1 = Writer.create(:username => ' Unassigned')
writer2 = Writer.create(:username => 'Chaney Kwak', :email => 'chaney_kwak@condenast.com')
writer3 = Writer.create(:username => 'Jennifer Wood', :email => 'jennifer@fake.com')
writer4 = Writer.create(:username => 'Gary Leff', :email => 'gary@fake.com')

puts "Created writers"

producer1 = Producer.create(:username => ' Unassigned')
producer2 = Producer.create(:username => 'Laura Carroll', :email => 'laura_carroll@condenast.com')
producer3 = Producer.create(:username => 'Kristin Ambrosino', :email => 'kristin_ambrosino@condenast.com')
producer4 = Producer.create(:username => 'Tom Briechle', :email => 'thomas_briechle@condenast.com')

puts "Created producers"

theme1 = Theme.create(:theme => " Unassigned")
theme2 = Theme.create(:theme => "Food & Drink")
theme3 = Theme.create(:theme => "Style & Design")
theme4 = Theme.create(:theme => "Arts & Culture")
theme5 = Theme.create(:theme => "Travel Ideas")
theme6 = Theme.create(:theme => "Awards")
theme7 = Theme.create(:theme => "Travel Tips")
theme8 = Theme.create(:theme => "Destinations")
theme9 = Theme.create(:theme => "News")

puts "Created themes"

format1 = Format.create(:format => " Unassigned")
format2 = Format.create(:format => "Blog post")
format3 = Format.create(:format => "Slideshow")
format4 = Format.create(:format => "Article")
format5 = Format.create(:format => "List Page")
format6 = Format.create(:format => "Special Report")

puts "Created formats"

# status1 = Status.create(:status => "*Unassigned")
# status2 = Status.create(:status => "Assigned")
# status3 = Status.create(:status => "Received")
# status4 = Status.create(:status => "Edited")
# status5 = Status.create(:status => "Produced")
# status6 = Status.create(:status => "Scheduled")
# status7 = Status.create(:status => "Published")

# puts "Created statuses"
Story.create(:nickname => 'Buddhist monks', :start_time => '2014-04-01 8:00:00', :notes => "Please build in /features", :editor => editor3, :writer => writer3, :producer => producer3, :theme => theme3, :format => format3, :status => "Published")
Story.create(:nickname => 'April fools', :start_time => '2014-04-01 10:00:00', :notes => "Please build in /features", :editor => editor3, :writer => writer3, :producer => producer3, :theme => theme3, :format => format3, :status => "Published")

Story.create(:nickname => 'Champagne shower', :start_time => '2014-04-02 8:00:00', :notes => "none", :editor => editor1, :writer => writer2, :producer => producer3, :theme => theme4, :format => format4, :status => "Published")
Story.create(:nickname => 'Top 100 Hotels', :start_time => '2014-04-02 12:00:00', :notes => "none", :editor => editor1, :writer => writer2, :producer => producer3, :theme => theme4, :format => format4, :status => "Published")

Story.create(:nickname => 'WP flying tips', :start_time => '2014-04-03 8:00:00', :notes => "Please source photo", :editor => editor1, :writer => writer1, :producer => producer1, :theme => theme1, :format => format1, :status => "Scheduled")
Story.create(:nickname => 'Cuba book', :start_time => '2014-04-03 9:00:00', :notes => "Please source photo", :editor => editor1, :writer => writer1, :producer => producer1, :theme => theme1, :format => format1, :status => "Scheduled")
Story.create(:nickname => 'Pools w/a View', :start_time => '2014-04-03 10:00:00', :notes => "Needs a rewrite", :editor => editor2, :writer => writer2, :producer => producer2, :theme => theme2, :format => format2, :status => "Produced")
Story.create(:nickname => 'Editors Itinerary', :start_time => '2014-04-03 11:00:00', :notes => "Please source photo", :editor => editor1, :writer => writer1, :producer => producer1, :theme => theme1, :format => format1, :status => "Scheduled")
Story.create(:nickname => 'German beer', :start_time => '2014-04-03 12:00:00', :editor => editor1, :writer => writer2, :producer => producer3, :theme => theme4, :format => format4, :status => "Edited")
Story.create(:nickname => 'Best miles cards', :start_time => '2014-04-03 14:00:00', :editor => editor1, :writer => writer2, :producer => producer3, :theme => theme4, :format => format4, :status => "Produced")
Story.create(:nickname => 'Cupcake ATM', :start_time => '2014-04-03 16:00:00', :editor => editor1, :writer => writer2, :producer => producer3, :theme => theme4, :format => format4, :status => "Filed")
Story.create(:nickname => 'Restaurants in Weird Places', :start_time => '2014-04-03 18:00:00', :editor => editor1, :writer => writer2, :producer => producer3, :theme => theme4, :format => format4, :status => "Assigned")

Story.create(:nickname => 'WP Five Things', :start_time => '2014-04-04 8:00:00', :editor => editor1, :writer => writer2, :producer => producer3, :theme => theme4, :format => format4, :status => "Produced")
Story.create(:nickname => 'French museum cafe', :start_time => '2014-04-04 10:00:00', :editor => editor1, :writer => writer2, :producer => producer3, :theme => theme4, :format => format4, :status => "Filed")
Story.create(:nickname => 'Augmented reality', :start_time => '2014-04-04 10:00:00', :editor => editor1, :writer => writer2, :producer => producer3, :theme => theme4, :format => format4, :status => "Edited")

Story.create(:nickname => 'SD Bacon & Beer', :start_time => '2014-04-05 10:00:00', :editor => editor1, :writer => writer2, :producer => producer3, :theme => theme4, :format => format4, :status => "Assigned")

Story.create(:nickname => 'Tax Refund Vacation', :start_time => '2014-04-06 10:00:00', :editor => editor1, :writer => writer2, :producer => producer3, :theme => theme4, :format => format4, :status => " Unassigned")

Story.create(:nickname => 'Morocco jewelry', :start_time => '2014-04-08 22:00:00', :notes => "No photos yet", :editor => editor1, :writer => writer1, :producer => producer1, :theme => theme1, :format => format1, :status => " Unassigned")
Story.create(:nickname => 'London skyscrapers', :start_time => '2014-04-11 16:00:00', :notes => "Needs a rewrite", :editor => editor2, :writer => writer2, :producer => producer2, :theme => theme2, :format => format2, :status => "Assigned")


puts "Created stories"

