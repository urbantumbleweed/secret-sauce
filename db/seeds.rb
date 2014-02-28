# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)



page_names = {
		'editorial_leadership' => 'Leadership',
		'photo_leadership' => 'Leadership',
		'marketing_leadership' => 'Leadership',
		'tone' => 'Tone',
		'style' => 'Style',
		'editorial_process' => 'Process',
		'photo_process' => 'Process',
		'chapter_spreadsheet' => 'Spreadsheet',
		'contributor_spreadsheet' => 'Spreadsheet',
		'login' => 'Login',
		'add_user' => 'Add User',
		'update_staff' => 'Update Staff',
		'login' => 'Login',
		'profile' => 'Profile',
		'post' => 'Post',
		'final_checks' => 'Final Checks',
		'add_photos' => 'Add Photos',
		'add_video' => 'Add Video',
		'slideshow' => 'Add Slideshow',
		'editorial_sections' => 'Sections',
		'photo_sections' => 'Sections',
		'editorial_sections' => 'Sections',
		'flickr' => 'Flickr',
		'expectations' => 'Expectations',
		'fave_photos' => 'Photos We Love',
		'photo_editing' => 'Photo Editing',
		'photo_sections' => 'Sections',
		'marketing_structure' => 'Structure',
		'plan_an_event' => 'Plan an Event',
		'social_media' => 'Social Media',
		'plan_an_event' => 'Plan an Event',
		'free_ideas' => 'Free Ideas',
		'marketing_materials' => 'Marketing Materials',
		'analytics' => 'Analytics',
		'marketing_materials' => 'Marketing Materials',
		'calendar' => 'Events Calendar',
	}

page_names.each do |k, v|
	page = Page.create(shortname: k, name: v)
end

eic = Position.create({
	name: 'editor-in-chief'
})

me = Position.create({
	name: 'managing-editor',
})

ce = Position.create({
	name: 'copy-editor',
})

w = Position.create({
	name: 'writer',
})

nc = Position.create({
	name: 'national-contributor',
})

pd = Position.create({
	name: 'photo-director',
})

p = Position.create({
	name: 'photographer',
})

bd = Position.create({
	name: 'business-director',
})

mtm = Position.create({
	name: 'marketing-team-member',
})

# THESE SHORTNAMES ARE IN THE EDITORIAL FOLDER::

eic.pages = eic.pages + [
	Page.find_by_shortname('editorial_leadership'),
	Page.find_by_shortname('tone'),
	Page.find_by_shortname('style'),
	Page.find_by_shortname('editorial_process'),
	Page.find_by_shortname('chapter_spreadsheet'),
	Page.find_by_shortname('login'),
	Page.find_by_shortname('add_user'),
	Page.find_by_shortname('update_staff'),
	Page.find_by_shortname('profile'),
	Page.find_by_shortname('post'),
	Page.find_by_shortname('final_checks'),
	Page.find_by_shortname('add_photos'),
	Page.find_by_shortname('add_video'),
	Page.find_by_shortname('slideshow'),
	Page.find_by_shortname('editorial_sections')
	]

	# STOP


me.pages = me.pages + [
	Page.find_by_shortname('tone'),
	Page.find_by_shortname('style'),
	Page.find_by_shortname('editorial_process'),
	Page.find_by_shortname('chapter_spreadsheet'),
	Page.find_by_shortname('login'),
	Page.find_by_shortname('profile'),
	Page.find_by_shortname('post'),
	Page.find_by_shortname('add_photos'),
	Page.find_by_shortname('add_video'),
	Page.find_by_shortname('slideshow'),
	Page.find_by_shortname('editorial_sections')
	]

ce.pages = me.pages
w.pages = me.pages
nc.pages = me.pages + [
	Page.find_by_shortname('flickr'),
	Page.find_by_shortname('expectations'),
	Page.find_by_shortname('fave_photos'),
	Page.find_by_shortname('photo_editing'),
	Page.find_by_shortname('photo_sections'),
	]


# THESE SHORTNAMES ARE IN THE PHOTO FOLDER::

p.pages = p.pages + [
	Page.find_by_shortname('photo_process'),
	Page.find_by_shortname('flickr'),
	Page.find_by_shortname('expectations'),
	Page.find_by_shortname('fave_photos'),
	Page.find_by_shortname('photo_editing'),
	Page.find_by_shortname('photo_sections'),
	]

pd.pages = [Page.find_by_shortname('photo_leadership')] + p.pages


# STOP

# THESE SHORTNAMES ARE IN THE MARKETING FOLDER::

mtm.pages = mtm.pages + [
	Page.find_by_shortname('marketing_structure'),
	Page.find_by_shortname('plan_an_event'),
	Page.find_by_shortname('social_media'),
	Page.find_by_shortname('free_ideas'),
	Page.find_by_shortname('marketing_materials'),
	Page.find_by_shortname('analytics'),
	Page.find_by_shortname('marketing_materials'),
	Page.find_by_shortname('calendar')
	]

bd.pages = [Page.find_by_shortname('marketing_leadership')] + mtm.pages

# STOP

School.create({
	name:          'Northwestern',
	shortname:     'nu',  
	twitter_url:   'Twitter URL',
	instagram_url: 'Instagram URL',
	spoon_url:     'Spoon URL',
	facebook_url:  'Facebook URL',
})

School.create({
	name:          'UIUC',
  shortname:     'uiuc', 
	twitter_url:   'Twitter URL',
	instagram_url: 'Instagram URL',
	spoon_url:     'Spoon URL',
	facebook_url:  'Facebook URL',
})

School.create({
	name:          'University of Chicago',
	shortname:     'uchi', 
	twitter_url:   'Twitter URL',
	instagram_url: 'Instagram URL',
	spoon_url:     'Spoon URL',
	facebook_url:  'Facebook URL',
})

School.create({
	name:          'U Penn',
	shortname:     'upenn', 
	twitter_url:   'Twitter URL',
	instagram_url: 'Instagram URL',
	spoon_url:     'Spoon URL',
	facebook_url:  'Facebook URL',
})

School.create({
	name:          'Wisconsin',
	shortname:     'uw', 
	twitter_url:   'Twitter URL',
	instagram_url: 'Instagram URL',
	spoon_url:     'Spoon URL',
	facebook_url:  'Facebook URL',
})

School.create({
	name:          'NYU',
	shortname:     'nyu', 
	twitter_url:   'Twitter URL',
	instagram_url: 'Instagram URL',
	spoon_url:     'Spoon URL',
	facebook_url:  'Facebook URL',
})

School.create({
	name:          'Michigan',
	shortname:     'michigan', 
	twitter_url:   'Twitter URL',
	instagram_url: 'Instagram URL',
	spoon_url:     'Spoon URL',
	facebook_url:  'Facebook URL',
})

School.create({
	name:          'Princeton',
	shortname:     'princeton', 
	twitter_url:   'Twitter URL',
	instagram_url: 'Instagram URL',
	spoon_url:     'Spoon URL',
	facebook_url:  'Facebook URL',
})

School.create({
	name:          'Wash U in St. Louis',
	shortname:     'washu', 
	twitter_url:   'Twitter URL',
	instagram_url: 'Instagram URL',
	spoon_url:     'Spoon URL',
	facebook_url:  'Facebook URL',
})

School.create({
	name:          'Rochester',
	shortname:     'rochester',
	twitter_url:   'Twitter URL',
	instagram_url: 'Instagram URL',
	spoon_url:     'Spoon URL',
	facebook_url:  'Facebook URL',
})

School.create({
	name:          'Tulane',
	shortname:     'tulane',
	twitter_url:   'Twitter URL',
	instagram_url: 'Instagram URL',
	spoon_url:     'Spoon URL',
	facebook_url:  'Facebook URL',
})

School.create({
	name:          'Texas',
	shortname:     'texas',
	twitter_url:   'Twitter URL',
	instagram_url: 'Instagram URL',
	spoon_url:     'Spoon URL',
	facebook_url:  'Facebook URL',
})

School.create({
	name:          'Dartmouth',
	shortname:     'dartmouth',
	twitter_url:   'Twitter URL',
	instagram_url: 'Instagram URL',
	spoon_url:     'Spoon URL',
	facebook_url:  'Facebook URL',
})

School.create({
	name:          'Maryland',
	shortname:     'umd',
	twitter_url:   'Twitter URL',
	instagram_url: 'Instagram URL',
	spoon_url:     'Spoon URL',
	facebook_url:  'Facebook URL',
})

School.create({
	name:          'Cornell',
	shortname:     'cornell',
	twitter_url:   'Twitter URL',
	instagram_url: 'Instagram URL',
	spoon_url:     'Spoon URL',
	facebook_url:  'Facebook URL',
})

School.create({
	name:          'University of Southern California',
	shortname:     'usc',
	twitter_url:   'Twitter URL',
	instagram_url: 'Instagram URL',
	spoon_url:     'Spoon URL',
	facebook_url:  'Facebook URL',
})

School.create({
	name:          'University of South Carolina',
	shortname:     'uofsc',
	twitter_url:   'Twitter URL',
	instagram_url: 'Instagram URL',
	spoon_url:     'Spoon URL',
	facebook_url:  'Facebook URL',
})

School.create({
	name:          'UC: Berkeley',
	shortname:     'cal',
	twitter_url:   'Twitter URL',
	instagram_url: 'Instagram URL',
	spoon_url:     'Spoon URL',
	facebook_url:  'Facebook URL',
})

School.create({
	name:          'Georgetown',
	shortname:     'georgetown',
	twitter_url:   'Twitter URL',
	instagram_url: 'Instagram URL',
	spoon_url:     'Spoon URL',
	facebook_url:  'Facebook URL',
})

School.create({
	name:          'Emory',
	shortname:     'emory',
	twitter_url:   'Twitter URL',
	instagram_url: 'Instagram URL',
	spoon_url:     'Spoon URL',
	facebook_url:  'Facebook URL',
})

School.create({
	name:          'PSU',
	shortname:     'psu',
	twitter_url:   'Twitter URL',
	instagram_url: 'Instagram URL',
	spoon_url:     'Spoon URL',
	facebook_url:  'Facebook URL',
})

School.create({
	name:          'Colgate',
	shortname:     'colgate',
	twitter_url:   'Twitter URL',
	instagram_url: 'Instagram URL',
	spoon_url:     'Spoon URL',
	facebook_url:  'Facebook URL',
})

School.create({
	name:          'University of Oregon',
	shortname:     'uoregon',
	twitter_url:   'Twitter URL',
	instagram_url: 'Instagram URL',
	spoon_url:     'Spoon URL',
	facebook_url:  'Facebook URL',
})

School.create({
	name:          'Southern Methodist University',
	shortname:     'smu',
	twitter_url:   'Twitter URL',
	instagram_url: 'Instagram URL',
	spoon_url:     'Spoon URL',
	facebook_url:  'Facebook URL',
})

School.create({
	name:          'Boston University',
	shortname:     'bu',
	twitter_url:   'Twitter URL',
	instagram_url: 'Instagram URL',
	spoon_url:     'Spoon URL',
	facebook_url:  'Facebook URL',
})

School.create({
	name:          'Syracuse',
	shortname:     'syracuse',
	twitter_url:   'Twitter URL',
	instagram_url: 'Instagram URL',
	spoon_url:     'Spoon URL',
	facebook_url:  'Facebook URL',
})

School.create({
	name:          'Vanderbilt',
	shortname:     'vandy',
	twitter_url:   'Twitter URL',
	instagram_url: 'Instagram URL',
	spoon_url:     'Spoon URL',
	facebook_url:  'Facebook URL',
})

School.create({
	name:          'University of Florida',
	shortname:     'uf',
	twitter_url:   'Twitter URL',
	instagram_url: 'Instagram URL',
	spoon_url:     'Spoon URL',
	facebook_url:  'Facebook URL',
})

School.create({
	name:          'American',
	shortname:     'american',
	twitter_url:   'Twitter URL',
	instagram_url: 'Instagram URL',
	spoon_url:     'Spoon URL',
	facebook_url:  'Facebook URL',
})

School.create({
	name:          'Swarthmore',
	shortname:     'swat',
	twitter_url:   'Twitter URL',
	instagram_url: 'Instagram URL',
	spoon_url:     'Spoon URL',
	facebook_url:  'Facebook URL',
})

password = 'password'

User.create!([
  {email: "andrea@example.com", encrypted_password: "$2a$10$kfnfyx.OJsCC//2zgxoms.PJQoeDyICY51QV2P89kEFOikPBbsE6u", reset_password_token: nil, reset_password_sent_at: nil, remember_created_at: nil, sign_in_count: 1, current_sign_in_at: "2014-02-27 20:14:41", last_sign_in_at: "2014-02-27 20:14:41", current_sign_in_ip: "127.0.0.1", last_sign_in_ip: "127.0.0.1", first_name: "Andrea", last_name: "Kang", school_id: 1, phone_number: "555-123-4567", active: true, password: password },
  {email: "mackenzie@spoonuniversity.com", encrypted_password: "$2a$10$Rc86kE6PkI1gny0T15t3X.Jv8KGXb.HxtkHgDowOFA5TnTLcXe1hi", reset_password_token: nil, reset_password_sent_at: nil, remember_created_at: nil, sign_in_count: 1, current_sign_in_at: "2014-02-27 21:04:08", last_sign_in_at: "2014-02-27 21:04:08", current_sign_in_ip: "127.0.0.1", last_sign_in_ip: "127.0.0.1", first_name: "Mackenzie", last_name: "Barth", school_id: 1, phone_number: "123-456-7890", active: true, password: password },
  {email: "maddie@example.com", encrypted_password: "$2a$10$GhoEzWkxUKm/UaVT0AGm7eVUaLnlOzP7YguOF7VZQZoFKz3E2IARe", reset_password_token: nil, reset_password_sent_at: nil, remember_created_at: nil, sign_in_count: 1, current_sign_in_at: "2014-02-27 21:04:50", last_sign_in_at: "2014-02-27 21:04:50", current_sign_in_ip: "127.0.0.1", last_sign_in_ip: "127.0.0.1", first_name: "Maddie", last_name: "Feedler", school_id: 12, phone_number: "123-456-7890", active: true, password: password },
  {email: "devin@example.com", encrypted_password: "$2a$10$BazdcQR5rGMlQxv.pdUD0eF8/mrTVCX/i7RLma1PC8O1JqKp/qswy", reset_password_token: nil, reset_password_sent_at: nil, remember_created_at: nil, sign_in_count: 1, current_sign_in_at: "2014-02-27 21:05:43", last_sign_in_at: "2014-02-27 21:05:43", current_sign_in_ip: "127.0.0.1", last_sign_in_ip: "127.0.0.1", first_name: "Devin", last_name: "Midura", school_id: 20, phone_number: "123-456-7890", active: true, password: password },
  {email: "gabriel@example.com", encrypted_password: "$2a$10$S/1XyyStHNfr6WyD1Z9pvuVmYem/xxEEvGjVExaDU5Z4cjVmyqhfS", reset_password_token: nil, reset_password_sent_at: nil, remember_created_at: nil, sign_in_count: 1, current_sign_in_at: "2014-02-27 21:06:08", last_sign_in_at: "2014-02-27 21:06:08", current_sign_in_ip: "127.0.0.1", last_sign_in_ip: "127.0.0.1", first_name: "Gabriel", last_name: "Dance", school_id: 9, phone_number: "123-456-7890", active: true, password: password },
  {email: "nate@example.cm", encrypted_password: "$2a$10$ev8XiXqpR14xG/MjyHyaauwHqcRzGEp6nqBq.tbvJJSPZXJqLS6YW", reset_password_token: nil, reset_password_sent_at: nil, remember_created_at: nil, sign_in_count: 1, current_sign_in_at: "2014-02-27 21:06:29", last_sign_in_at: "2014-02-27 21:06:29", current_sign_in_ip: "127.0.0.1", last_sign_in_ip: "127.0.0.1", first_name: "Nate", last_name: "Nemon", school_id: 2, phone_number: "123-456-7890", active: true, password: password },
  {email: "ryan@example.com", encrypted_password: "$2a$10$YC3xh5xaqb8r9a8xDvpJ9ObGUPVBRjFWtO8u0xaTncbRif0BE0DjO", reset_password_token: nil, reset_password_sent_at: nil, remember_created_at: nil, sign_in_count: 1, current_sign_in_at: "2014-02-27 21:07:06", last_sign_in_at: "2014-02-27 21:07:06", current_sign_in_ip: "127.0.0.1", last_sign_in_ip: "127.0.0.1", first_name: "Ryan", last_name: "Fazio", school_id: 14, phone_number: "123-456-7890", active: true, password: password },
  {email: "mike@example.com", encrypted_password: "$2a$10$7x6eXVE3.2XTZ0kyqEe7BugJp7TZIqzHegATfljNLYUryPvgwHG92", reset_password_token: nil, reset_password_sent_at: nil, remember_created_at: nil, sign_in_count: 1, current_sign_in_at: "2014-02-27 21:07:52", last_sign_in_at: "2014-02-27 21:07:52", current_sign_in_ip: "127.0.0.1", last_sign_in_ip: "127.0.0.1", first_name: "Mike", last_name: "Feldberg", school_id: 8, phone_number: "123-456-7890", active: true, password: password },
  {email: "shaina@example.come", encrypted_password: "$2a$10$KqAq8cI7ewGR47aZRhuk0.fEpbdajidTtsTJO3vrbhpULqb1OtJK2", reset_password_token: nil, reset_password_sent_at: nil, remember_created_at: nil, sign_in_count: 1, current_sign_in_at: "2014-02-27 21:08:24", last_sign_in_at: "2014-02-27 21:08:24", current_sign_in_ip: "127.0.0.1", last_sign_in_ip: "127.0.0.1", first_name: "Shaina", last_name: "Conners", school_id: 16, phone_number: "123-456-7890", active: true, password: password },
  {email: "sarah@example.com", encrypted_password: "$2a$10$LG6o1Eh4W3B70CAGKXVn5.rH4I//cWXCdXZ8uFhjRy5g4aoZaWUBe", reset_password_token: nil, reset_password_sent_at: nil, remember_created_at: nil, sign_in_count: 2, current_sign_in_at: "2014-02-27 21:28:46", last_sign_in_at: "2014-02-27 20:59:18", current_sign_in_ip: "127.0.0.1", last_sign_in_ip: "127.0.0.1", first_name: "Sarah", last_name: "Adler", school_id: 1, phone_number: "5126587019", active: true, password: password },
  {email: "kathryn@example.com", encrypted_password: "$2a$10$LVtfXWzMZgpcbrXlGk2pBe/7CkCAb7qbPQpknHlE1CiTWSurOphR6", reset_password_token: nil, reset_password_sent_at: nil, remember_created_at: nil, sign_in_count: 1, current_sign_in_at: "2014-02-27 22:27:45", last_sign_in_at: "2014-02-27 22:27:45", current_sign_in_ip: "127.0.0.1", last_sign_in_ip: "127.0.0.1", first_name: "Kathryn", last_name: "Nathanson", school_id: 7, phone_number: "123-456-7890", active: true, password: password },
  {email: "samer@example.com", encrypted_password: "$2a$10$4Y17iYcYf..Qj6SDW50aPuIlCm3NUOBUhQVUnzZcxFz18XscHzP4e", reset_password_token: nil, reset_password_sent_at: nil, remember_created_at: nil, sign_in_count: 1, current_sign_in_at: "2014-02-27 22:29:06", last_sign_in_at: "2014-02-27 22:29:06", current_sign_in_ip: "127.0.0.1", last_sign_in_ip: "127.0.0.1", first_name: "Samer", last_name: "Bibi", school_id: 15, phone_number: "123-456-7890", active: true, password: password },
  {email: "nathaniel@example.com", encrypted_password: "$2a$10$cKJ.gK8uCTEKHFdeRZRhyO329oJqEAYsfP48eIUU2ScJrE7D18.7u", reset_password_token: nil, reset_password_sent_at: nil, remember_created_at: nil, sign_in_count: 1, current_sign_in_at: "2014-02-27 22:30:17", last_sign_in_at: "2014-02-27 22:30:17", current_sign_in_ip: "127.0.0.1", last_sign_in_ip: "127.0.0.1", first_name: "Nathaniel", last_name: "Harley", school_id: 23, phone_number: "123-456-7890", active: true, password: password },
  {email: "mackenzie@example.com", encrypted_password: "$2a$10$7MZq5uCRGfq34OXmxHLAJ.VYtLFeZJm7gWyixBJmRUCACjikXVium", reset_password_token: nil, reset_password_sent_at: nil, remember_created_at: nil, sign_in_count: 1, current_sign_in_at: "2014-02-27 22:43:43", last_sign_in_at: "2014-02-27 22:43:43", current_sign_in_ip: "127.0.0.1", last_sign_in_ip: "127.0.0.1", first_name: "Mackenzie", last_name: "Barth", school_id: 20, phone_number: "1234567890", active: true, password: password },
  {email: "lena@example.com", encrypted_password: "$2a$10$fAYl7egoG/4Oa1HsWTdKE.4zErAZ6uk7HT/Wczx/xILuVhIejXmg2", reset_password_token: nil, reset_password_sent_at: nil, remember_created_at: nil, sign_in_count: 2, current_sign_in_at: "2014-02-27 23:28:21", last_sign_in_at: "2014-02-27 20:57:32", current_sign_in_ip: "127.0.0.1", last_sign_in_ip: "127.0.0.1", first_name: "Lena", last_name: "Niznik", school_id: 13, phone_number: "555-123-4567", active: true, password: password }
])

Status.create!([
  {position_id: 1, user_id: 1, quiz_1: nil, quiz_2: nil, quiz_3: nil},
  {position_id: 2, user_id: 2, quiz_1: nil, quiz_2: nil, quiz_3: nil},
  {position_id: 1, user_id: 3, quiz_1: nil, quiz_2: nil, quiz_3: nil},
  {position_id: 1, user_id: 4, quiz_1: nil, quiz_2: nil, quiz_3: nil},
  {position_id: 1, user_id: 5, quiz_1: nil, quiz_2: nil, quiz_3: nil},
  {position_id: 1, user_id: 6, quiz_1: nil, quiz_2: nil, quiz_3: nil},
  {position_id: 1, user_id: 7, quiz_1: nil, quiz_2: nil, quiz_3: nil},
  {position_id: 1, user_id: 8, quiz_1: nil, quiz_2: nil, quiz_3: nil},
  {position_id: 1, user_id: 9, quiz_1: nil, quiz_2: nil, quiz_3: nil},
  {position_id: 1, user_id: 10, quiz_1: nil, quiz_2: nil, quiz_3: nil},
  {position_id: 1, user_id: 11, quiz_1: nil, quiz_2: nil, quiz_3: nil},
  {position_id: 2, user_id: 12, quiz_1: nil, quiz_2: nil, quiz_3: nil},
  {position_id: 2, user_id: 13, quiz_1: nil, quiz_2: nil, quiz_3: nil},
  {position_id: 2, user_id: 14, quiz_1: nil, quiz_2: nil, quiz_3: nil},
  {position_id: 1, user_id: 15, quiz_1: nil, quiz_2: nil, quiz_3: nil}
])
