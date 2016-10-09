# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
if AdminUser.count == 0
  AdminUser.create!(email: 'admin@example.com', password: 'sus2610', password_confirmation: 'sus2610')
end

# Create Wedding Information
# Start
wedding_info = WeddingInformation.where(groom: 'Sushant').first_or_initialize
wedding_info.bride = 'Snehpallavi'
wedding_info.wedding_countdown_quote = "There is no more lovely, friendly, and charming relationship, communion or company than a good marriage."
wedding_info.wedding_details_quote = "Every heart sings a song, incomplete, until another heart whispers back. Those who wish to sing always find a song. At the touch of a lover, everyone becomes a poet."
wedding_info.instagallery_quote = "There is no more lovely, friendly, and charming relationship, communion or company than a good marriage."
wedding_info.save
# End

# Create Event Gallery
# Start
sort_order = 1
[["Engagement", "14 February, 2016"], ["Haldi", "19 November, 2016"], ["Wedding", "21 November, 2016"]].each do |event_params|
  event = EventGallery.where(name: event_params[0]).first_or_initialize
  event.sort_order = sort_order
  event.event_date = Date.parse(event_params[1])
  event.active     = false
  event.save
  sort_order = sort_order + 1
end
# End

# Create Ceremonies
[['Wedding', '21 November, 2016', '10AM - 1PM', 'Shivaji Park, Dadar'], ['Reception', '21 November, 2016', '2PM - 4PM', 'Shivaji Park, Dadar']].each do |ceremony_details|
  ceremony = Ceremony.where(name: ceremony_details[0]).first_or_initialize
  ceremony.ceremony_date = Date.parse(ceremony_details[1])
  ceremony.ceremony_time = ceremony_details[2]
  ceremony.ceremony_location = ceremony_details[3]
  ceremony.save
end
# Start

# End
