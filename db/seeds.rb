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
		'contributor_process' => 'Process',
		'chapter_spreadsheet' => 'Spreadsheet',
		'contributor_spreadsheet' => 'Spreadsheet',
		'login' => 'Login',
		'add_user' => 'Add User',
		'update_staff' => 'Update Staff',
		'login' => 'Login to Wordpress',
		'profile' => 'Profile',
		'post' => 'Post',
		'final_checks' => 'Final Checks',
		'add_photos' => 'Add Photos',
		'add_video' => 'Add Video',
		'slideshow' => 'Add Slideshow',
		'national_sections' => 'Sections',
		'local_sections' => 'Local Sections',
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
		'calendar' => 'Events Calendar',
	}

page_names.each do |k, v|
	page = Page.create(shortname: k, name: v)
end

eic = Position.create({
	name: 'Editor-in-Chief',
	shortname: 'editor-in-chief'
})

me = Position.create({
	name: 'Managing Editor',
	shortname: 'managing-editor'
})

ce = Position.create({
	name: 'Copy Editor',
	shortname: 'copy-editor'
})

w = Position.create({
	name: 'Writer',
	shortname: 'writer'
})

nc = Position.create({
	name: 'National Contributor',
	shortname: 'national-contributor'
})

pd = Position.create({
	name: 'Photo Director',
	shortname: 'photo-director'
})

p = Position.create({
	name: 'Photographer',
	shortname: 'photographer'
})

bd = Position.create({
	name: 'Business Director',
	shortname: 'business-director'
})

mtm = Position.create({
	name: 'Marketing & PR Member',
	shortname: 'marketing-team-member'
})

# THESE SHORTNAMES ARE IN THE EDITORIAL FOLDER::

eic.pages = eic.pages + [
	Page.find_by_shortname('editorial_leadership'), 
	Page.find_by_shortname('tone'), 
	Page.find_by_shortname('style'), # need to add and link quiz
	Page.find_by_shortname('editorial_process'), 
	Page.find_by_shortname('chapter_spreadsheet'), 
	Page.find_by_shortname('login'), 
	Page.find_by_shortname('add_user'), 
	Page.find_by_shortname('update_staff'), 
	Page.find_by_shortname('profile'), 
	Page.find_by_shortname('post'), 
	Page.find_by_shortname('final_checks'), 
	Page.find_by_shortname('add_photos'), 
	Page.find_by_shortname('add_video'), # missing?
	Page.find_by_shortname('slideshow'), 
	Page.find_by_shortname('editorial_sections') # need to add
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
	Page.find_by_shortname('national_sections'),
	Page.find_by_shortname('local_sections')
	]

ce.pages = me.pages
w.pages = me.pages
nc.pages = [
	Page.find_by_shortname('tone'),
	Page.find_by_shortname('style'),
	Page.find_by_shortname('contributor_process'),
	Page.find_by_shortname('contributor_spreadsheet'),
	Page.find_by_shortname('login'),
	Page.find_by_shortname('profile'),
	Page.find_by_shortname('post'),
	Page.find_by_shortname('add_photos'),
	Page.find_by_shortname('add_video'),
	Page.find_by_shortname('slideshow'),
	Page.find_by_shortname('national_sections'),
	Page.find_by_shortname('flickr'),
	Page.find_by_shortname('expectations'),
	Page.find_by_shortname('fave_photos'),
	Page.find_by_shortname('photo_editing')
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
	Page.find_by_shortname('calendar')
	]

bd.pages = [Page.find_by_shortname('marketing_leadership')] + mtm.pages

# STOP

School.create({
	name:          'Northwestern',
	shortname:     'nu',  
	twitter_url:   'https://twitter.com/spoonuniversity',
	instagram_url: 'http://instagram.com/spoonuniversity',
	spoon_url:     'http://spoonuniversity.com',
	facebook_url:  'https://www.facebook.com/SpoonUniversity',
	color_1:        '#520063',
	color_2:        '#FFFFFF'
})

School.create({
	name:          'UIUC',
  shortname:     'uiuc', 
	twitter_url:   'https://twitter.com/spoonuniversity',
	instagram_url: 'http://instagram.com/spoonuniversity',
	spoon_url:     'http://spoonuniversity.com',
	facebook_url:  'https://www.facebook.com/SpoonUniversity',
	color_1:        '#003C7D',
	color_2:        '#F47F24'
})

School.create({
	name:          'University of Chicago',
	shortname:     'uchi', 
	twitter_url:   'https://twitter.com/spoonuniversity',
	instagram_url: 'http://instagram.com/spoonuniversity',
	spoon_url:     'http://spoonuniversity.com',
	facebook_url:  'https://www.facebook.com/SpoonUniversity',
	color_1:       '#800000',
	color_2:       '#767676'
})

School.create({
	name:          'University of Pennsylvania',
	shortname:     'upenn', 
	twitter_url:   'https://twitter.com/spoonuniversity',
	instagram_url: 'http://instagram.com/spoonuniversity',
	spoon_url:     'http://spoonuniversity.com',
	facebook_url:  'https://www.facebook.com/SpoonUniversity',
	color_1:       '#01256e',
	color_2:       '#95001a'
})

School.create({
	name:          'Wisconsin',
	shortname:     'uw', 
	twitter_url:   'https://twitter.com/spoonuniversity',
	instagram_url: 'http://instagram.com/spoonuniversity',
	spoon_url:     'http://spoonuniversity.com',
	facebook_url:  'https://www.facebook.com/SpoonUniversity',
	color_1:       '#b70101',
	color_2:       '#E7D9C1'
})

School.create({
	name:          'New York University',
	shortname:     'nyu', 
	twitter_url:   'https://twitter.com/spoonuniversity',
	instagram_url: 'http://instagram.com/spoonuniversity',
	spoon_url:     'http://spoonuniversity.com',
	facebook_url:  'https://www.facebook.com/SpoonUniversity',
	color_1:        '#57068c',
	color_2:        '#818790'
})

School.create({
	name:          'Michigan',
	shortname:     'michigan', 
	twitter_url:   'https://twitter.com/spoonuniversity',
	instagram_url: 'http://instagram.com/spoonuniversity',
	spoon_url:     'http://spoonuniversity.com',
	facebook_url:  'https://www.facebook.com/SpoonUniversity',
	color_1:       '#ffcb05',
	color_2:       '#00274c'
})

School.create({
	name:          'Princeton',
	shortname:     'princeton', 
	twitter_url:   'https://twitter.com/spoonuniversity',
	instagram_url: 'http://instagram.com/spoonuniversity',
	spoon_url:     'http://spoonuniversity.com',
	facebook_url:  'https://www.facebook.com/SpoonUniversity',
	color_1:       '#EE7F2D',
	color_2:       '#000000'
})

School.create({
	name:          'Washington University in St. Louis',
	shortname:     'washu', 
	twitter_url:   'https://twitter.com/spoonuniversity',
	instagram_url: 'http://instagram.com/spoonuniversity',
	spoon_url:     'http://spoonuniversity.com',
	facebook_url:  'https://www.facebook.com/SpoonUniversity',
	color_1:        '#007360',
	color_2:        '#9d0917'
})

School.create({
	name:          'Rochester',
	shortname:     'rochester',
	twitter_url:   'https://twitter.com/spoonuniversity',
	instagram_url: 'http://instagram.com/spoonuniversity',
	spoon_url:     'http://spoonuniversity.com',
	facebook_url:  'https://www.facebook.com/SpoonUniversity',
	color_1:       '#000d9e',
	color_2:       '#ffe500'
})

School.create({
	name:          'Tulane',
	shortname:     'tulane',
	twitter_url:   'https://twitter.com/spoonuniversity',
	instagram_url: 'http://instagram.com/spoonuniversity',
	spoon_url:     'http://spoonuniversity.com',
	facebook_url:  'https://www.facebook.com/SpoonUniversity',
	color_1:       '#00331A',
	color_2:       '#224568'
})

School.create({
	name:          'Texas',
	shortname:     'texas',
	twitter_url:   'https://twitter.com/spoonuniversity',
	instagram_url: 'http://instagram.com/spoonuniversity',
	spoon_url:     'http://spoonuniversity.com',
	facebook_url:  'https://www.facebook.com/SpoonUniversity',
	color_1:       '#CC5500',
	color_2:       '#FFFFFF'
})

School.create({
	name:          'Dartmouth',
	shortname:     'dartmouth',
	twitter_url:   'https://twitter.com/spoonuniversity',
	instagram_url: 'http://instagram.com/spoonuniversity',
	spoon_url:     'http://spoonuniversity.com',
	facebook_url:  'https://www.facebook.com/SpoonUniversity',
	color_1:       '#00693E',
	color_2:       '#ffffff'
})

School.create({
	name:          'Maryland',
	shortname:     'umd',
	twitter_url:   'https://twitter.com/spoonuniversity',
	instagram_url: 'http://instagram.com/spoonuniversity',
	spoon_url:     'http://spoonuniversity.com',
	facebook_url:  'https://www.facebook.com/SpoonUniversity',
	color_1:        '#cc0000',
	color_2:        '#ffcc00'
})

School.create({
	name:          'Cornell',
	shortname:     'cornell',
	twitter_url:   'https://twitter.com/spoonuniversity',
	instagram_url: 'http://instagram.com/spoonuniversity',
	spoon_url:     'http://spoonuniversity.com',
	facebook_url:  'https://www.facebook.com/SpoonUniversity',
	color_1:       '#b31b1b',
	color_2:       '#4d4e53'
})

School.create({
	name:          'University of Southern California',
	shortname:     'usc',
	twitter_url:   'https://twitter.com/spoonuniversity',
	instagram_url: 'http://instagram.com/spoonuniversity',
	spoon_url:     'http://spoonuniversity.com',
	facebook_url:  'https://www.facebook.com/SpoonUniversity',
	color_1:       '#990000',
	color_2:       '#FFCC00'
})

School.create({
	name:          'University of South Carolina',
	shortname:     'uofsc',
	twitter_url:   'https://twitter.com/spoonuniversity',
	instagram_url: 'http://instagram.com/spoonuniversity',
	spoon_url:     'http://spoonuniversity.com',
	facebook_url:  'https://www.facebook.com/SpoonUniversity',
	color_1:       '#73000A',
	color_2:       '#000000'
})

School.create({
	name:          'UC: Berkeley',
	shortname:     'cal',
	twitter_url:   'https://twitter.com/spoonuniversity',
	instagram_url: 'http://instagram.com/spoonuniversity',
	spoon_url:     'http://spoonuniversity.com',
	facebook_url:  'https://www.facebook.com/SpoonUniversity',
	color_1:       '#003478',
	color_2:       '#EDAC00'
})

School.create({
	name:          'Georgetown',
	shortname:     'georgetown',
	twitter_url:   'https://twitter.com/spoonuniversity',
	instagram_url: 'http://instagram.com/spoonuniversity',
	spoon_url:     'http://spoonuniversity.com',
	facebook_url:  'https://www.facebook.com/SpoonUniversity',
	color_1:       '#002147',
	color_2:       '##8d817b'
})

School.create({
	name:          'Emory',
	shortname:     'emory',
	twitter_url:   'https://twitter.com/spoonuniversity',
	instagram_url: 'http://instagram.com/spoonuniversity',
	spoon_url:     'http://spoonuniversity.com',
	facebook_url:  'https://www.facebook.com/SpoonUniversity',
	color_1:        '#002878',
	color_2:        '#bdbfc1'
})

School.create({
	name:          'Penn State University',
	shortname:     'psu',
	twitter_url:   'https://twitter.com/spoonuniversity',
	instagram_url: 'http://instagram.com/spoonuniversity',
	spoon_url:     'http://spoonuniversity.com',
	facebook_url:  'https://www.facebook.com/SpoonUniversity',
	color_1:       '#000066',
	color_2:       '#ffffff'
})

School.create({
	name:          'Colgate',
	shortname:     'colgate',
	twitter_url:   'https://twitter.com/spoonuniversity',
	instagram_url: 'http://instagram.com/spoonuniversity',
	spoon_url:     'http://spoonuniversity.com',
	facebook_url:  'https://www.facebook.com/SpoonUniversity',
	color_1:       '#862633',
	color_2:       '#867d6f'
})

School.create({
	name:          'University of Oregon',
	shortname:     'uoregon',
	twitter_url:   'https://twitter.com/spoonuniversity',
	instagram_url: 'http://instagram.com/spoonuniversity',
	spoon_url:     'http://spoonuniversity.com',
	facebook_url:  'https://www.facebook.com/SpoonUniversity',
	color_1:       '#004F27',
	color_2:       '#FFCC00'
})

School.create({
	name:          'Southern Methodist University',
	shortname:     'smu',
	twitter_url:   'https://twitter.com/spoonuniversity',
	instagram_url: 'http://instagram.com/spoonuniversity',
	spoon_url:     'http://spoonuniversity.com',
	facebook_url:  'https://www.facebook.com/SpoonUniversity',
	color_1:       '#0038A8',
	color_2:       '#CE1126'
})

School.create({
	name:          'Boston University',
	shortname:     'bu',
	twitter_url:   'https://twitter.com/spoonuniversity',
	instagram_url: 'http://instagram.com/spoonuniversity',
	spoon_url:     'http://spoonuniversity.com',
	facebook_url:  'https://www.facebook.com/SpoonUniversity',
	color_1:       '##CC0000',
	color_2:       '#000000'
})

School.create({
	name:          'Syracuse',
	shortname:     'syracuse',
	twitter_url:   'https://twitter.com/spoonuniversity',
	instagram_url: 'http://instagram.com/spoonuniversity',
	spoon_url:     'http://spoonuniversity.com',
	facebook_url:  'https://www.facebook.com/SpoonUniversity',
	color_1:       '#ff5a00',
	color_2:       '#333333'
})

School.create({
	name:          'Vanderbilt',
	shortname:     'vandy',
	twitter_url:   'https://twitter.com/spoonuniversity',
	instagram_url: 'http://instagram.com/spoonuniversity',
	spoon_url:     'http://spoonuniversity.com',
	facebook_url:  'https://www.facebook.com/SpoonUniversity',
	color_1:       '#000000',
	color_2:       '#997F3D'
})

School.create({
	name:          'University of Florida',
	shortname:     'uf',
	twitter_url:   'https://twitter.com/spoonuniversity',
	instagram_url: 'http://instagram.com/spoonuniversity',
	spoon_url:     'http://spoonuniversity.com',
	facebook_url:  'https://www.facebook.com/SpoonUniversity',
	color_1:       '#FF4A00',
	color_2:       '#0021A5'
})

School.create({
	name:          'American',
	shortname:     'american',
	twitter_url:   'https://twitter.com/spoonuniversity',
	instagram_url: 'http://instagram.com/spoonuniversity',
	spoon_url:     'http://spoonuniversity.com',
	facebook_url:  'https://www.facebook.com/SpoonUniversity',
	color_1:       '#0d1675',
	color_2:       '#c80016'
})

School.create({
	name:          'Swarthmore',
	shortname:     'swat',
	twitter_url:   'https://twitter.com/spoonuniversity',
	instagram_url: 'http://instagram.com/spoonuniversity',
	spoon_url:     'http://spoonuniversity.com',
	facebook_url:  'https://www.facebook.com/SpoonUniversity',
	color_1:       '#c12441',
	color_2:       '#9f1d35'
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
