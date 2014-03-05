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
		'section_intro' => 'Next...',
		'recipes' => 'Recipes',
		'restaurants' => 'Restaurants',
		'food_for_thought' => 'Food for Thought',
		'kitchen_101' => 'Kitchen 101',
		'students_campus' => 'Students & Campus',
		'events' => 'Events',
		'editorial_sections' => 'Sections',
		'flickr' => 'Flickr',
		'expectations' => 'Expectations',
		'photo_sections' => 'Sections',
		'fave_photos' => 'Photos We Love',
		'photo_editing' => 'Photo Editing',
		'marketing_structure' => 'Structure',
		'plan_an_event' => 'Plan an Event',
		'social_media' => 'Social Media',
		'plan_an_event' => 'Plan an Event',
		'free_ideas' => 'Free Ideas',
		'marketing_materials' => 'Marketing Materials',
		'analytics' => 'Analytics',
		'calendar' => 'Events Calendar'
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
	Page.find_by_shortname('add_video'),
	Page.find_by_shortname('slideshow'),
	Page.find_by_shortname('section_intro'), 
	Page.find_by_shortname('recipes'),
	Page.find_by_shortname('restaurants'),
	Page.find_by_shortname('kitchen_101'),
	Page.find_by_shortname('food_for_thought'),
	Page.find_by_shortname('students_campus'),
	Page.find_by_shortname('events'),
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
	Page.find_by_shortname('section_intro'), 
	Page.find_by_shortname('recipes'),
	Page.find_by_shortname('restaurants'),
	Page.find_by_shortname('kitchen_101'),
	Page.find_by_shortname('food_for_thought'),
	Page.find_by_shortname('students_campus'),
	Page.find_by_shortname('events'),
	Page.find_by_shortname('editorial_sections')
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
	Page.find_by_shortname('section_intro'), 
	Page.find_by_shortname('slideshow'),
	Page.find_by_shortname('recipes'),
	Page.find_by_shortname('kitchen_101'),
	Page.find_by_shortname('food_for_thought'),
	Page.find_by_shortname('editorial_sections'),
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
	name:          'Spoon National',
	shortname:     'national',  
	twitter_url:   'https://twitter.com/spoonuniversity',
	instagram_url: 'http://instagram.com/spoonuniversity',
	spoon_url:     'http://spoonuniversity.com',
	facebook_url:  'https://www.facebook.com/SpoonUniversity',
	color_1:        '#000000',
	color_2:        '#FFFFFF'
})



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

User.destroy_all

User.create!([
  {email: "mackenzie@spoonuniversity.com", encrypted_password: "$2a$10$1WyU/p14l8lMDC9PNZfmmOaRJyVaKKa/OyQbLJRyhpig49YB49GGy", reset_password_token: nil, reset_password_sent_at: nil, remember_created_at: nil, sign_in_count: 1, current_sign_in_at: "2014-02-27 21:04:08", last_sign_in_at: "2014-02-27 21:04:08", current_sign_in_ip: "127.0.0.1", last_sign_in_ip: "127.0.0.1", first_name: "Mackenzie", last_name: "Barth", school_id: 1, phone_number: "123-456-7890", active: true, agreed: false, see_alum: false, password:'password'},
  {email: "maddie@example.com", encrypted_password: "$2a$10$hQpFONu3CDVSTHLaJfz2oe/PvCetddCutvUoZWvSaYjYLk5lPQzkO", reset_password_token: nil, reset_password_sent_at: nil, remember_created_at: nil, sign_in_count: 1, current_sign_in_at: "2014-02-27 21:04:50", last_sign_in_at: "2014-02-27 21:04:50", current_sign_in_ip: "127.0.0.1", last_sign_in_ip: "127.0.0.1", first_name: "Maddie", last_name: "Feedler", school_id: 12, phone_number: "123-456-7890", active: true, agreed: false, see_alum: false, password:'password'},
  {email: "gabriel@example.com", encrypted_password: "$2a$10$QeqNAZ80hObH0fDQZbftxuPDOYmwpcQvPuHYifIgqR5UR/YuV1.iW", reset_password_token: nil, reset_password_sent_at: nil, remember_created_at: nil, sign_in_count: 1, current_sign_in_at: "2014-02-27 21:06:08", last_sign_in_at: "2014-02-27 21:06:08", current_sign_in_ip: "127.0.0.1", last_sign_in_ip: "127.0.0.1", first_name: "Gabriel", last_name: "Dance", school_id: 9, phone_number: "123-456-7890", active: true, agreed: false, see_alum: false, password:'password'},
  {email: "ryan@example.com", encrypted_password: "$2a$10$6vG77t4Cbz1Bh76cjyj/GOskYFGgnOyx/mN1c6MvSAgnzSHmR.dsW", reset_password_token: nil, reset_password_sent_at: nil, remember_created_at: nil, sign_in_count: 1, current_sign_in_at: "2014-02-27 21:07:06", last_sign_in_at: "2014-02-27 21:07:06", current_sign_in_ip: "127.0.0.1", last_sign_in_ip: "127.0.0.1", first_name: "Ryan", last_name: "Fazio", school_id: 14, phone_number: "123-456-7890", active: true, agreed: false, see_alum: false, password:'password'},
  {email: "mike@example.com", encrypted_password: "$2a$10$8CL4PesuGFmJvfQUOLraXe7Fl/ymq2J3RDiKBstLwYlTJ7BqNkEN6", reset_password_token: nil, reset_password_sent_at: nil, remember_created_at: nil, sign_in_count: 1, current_sign_in_at: "2014-02-27 21:07:52", last_sign_in_at: "2014-02-27 21:07:52", current_sign_in_ip: "127.0.0.1", last_sign_in_ip: "127.0.0.1", first_name: "Mike", last_name: "Feldberg", school_id: 8, phone_number: "123-456-7890", active: true, agreed: false, see_alum: false, password:'password'},
  {email: "shaina@example.com", encrypted_password: "$2a$10$xg3TbSTMWoQXaGeW313h0uqFJtEIjcIB.QYK7zz6zm6B5gqZJ4MYO", reset_password_token: nil, reset_password_sent_at: nil, remember_created_at: nil, sign_in_count: 1, current_sign_in_at: "2014-02-27 21:08:24", last_sign_in_at: "2014-02-27 21:08:24", current_sign_in_ip: "127.0.0.1", last_sign_in_ip: "127.0.0.1", first_name: "Shaina", last_name: "Conners", school_id: 16, phone_number: "123-456-7890", active: true, agreed: false, see_alum: false, password:'password'},
  {email: "sarah@example.com", encrypted_password: "$2a$10$2GkEB00Eq.hgsxnfF67quuH/PdXYuINCbTLhNTKvXe5G1YDsQgCN.", reset_password_token: nil, reset_password_sent_at: nil, remember_created_at: nil, sign_in_count: 2, current_sign_in_at: "2014-02-27 21:28:46", last_sign_in_at: "2014-02-27 20:59:18", current_sign_in_ip: "127.0.0.1", last_sign_in_ip: "127.0.0.1", first_name: "Sarah", last_name: "Adler", school_id: 1, phone_number: "5126587019", active: true, agreed: false, see_alum: false, password:'password'},
  {email: "kathryn@example.com", encrypted_password: "$2a$10$qnvgZDu8DKj4UghmvFoeyuCDVQXbhZO1vHLOcq/U.HdxtTWMcx4Um", reset_password_token: nil, reset_password_sent_at: nil, remember_created_at: nil, sign_in_count: 1, current_sign_in_at: "2014-02-27 22:27:45", last_sign_in_at: "2014-02-27 22:27:45", current_sign_in_ip: "127.0.0.1", last_sign_in_ip: "127.0.0.1", first_name: "Kathryn", last_name: "Nathanson", school_id: 7, phone_number: "123-456-7890", active: true, agreed: false, see_alum: false, password:'password'},
  {email: "samer@example.com", encrypted_password: "$2a$10$3Xux5yY6iJ2zkFOFd.j45.se0EA/JldEFJt9v5PKuTUhyjYy3uzBS", reset_password_token: nil, reset_password_sent_at: nil, remember_created_at: nil, sign_in_count: 1, current_sign_in_at: "2014-02-27 22:29:06", last_sign_in_at: "2014-02-27 22:29:06", current_sign_in_ip: "127.0.0.1", last_sign_in_ip: "127.0.0.1", first_name: "Samer", last_name: "Bibi", school_id: 15, phone_number: "123-456-7890", active: true, agreed: false, see_alum: false, password:'password'},
  {email: "nathaniel@example.com", encrypted_password: "$2a$10$TVllQmbdZKId26qJcl3GS.3uyEdMn3eCr8nxEug449nLHdpp1Dsp.", reset_password_token: nil, reset_password_sent_at: nil, remember_created_at: nil, sign_in_count: 1, current_sign_in_at: "2014-02-27 22:30:17", last_sign_in_at: "2014-02-27 22:30:17", current_sign_in_ip: "127.0.0.1", last_sign_in_ip: "127.0.0.1", first_name: "Nathaniel", last_name: "Harley", school_id: 23, phone_number: "123-456-7890", active: true, agreed: false, see_alum: false, password:'password'},
  {email: "lena@example.com", encrypted_password: "$2a$10$A979QTzwl0qq2vvQLq0YyevfHPZwHnVa4JgjBjWFbfjaqcStoHPr2", reset_password_token: nil, reset_password_sent_at: nil, remember_created_at: nil, sign_in_count: 5, current_sign_in_at: "2014-03-04 14:56:28", last_sign_in_at: "2014-03-04 13:33:27", current_sign_in_ip: "127.0.0.1", last_sign_in_ip: "127.0.0.1", first_name: "Lena", last_name: "Niznik", school_id: 20, phone_number: "555-123-4567", active: true, agreed: true, see_alum: true, password:'password'},
  {email: "nate@example.com", encrypted_password: "$2a$10$EvnurMaOmoAJY75mGRrpfOxc6HO3grgrONadQ0uB1lgWsLEHy944q", reset_password_token: nil, reset_password_sent_at: nil, remember_created_at: nil, sign_in_count: 3, current_sign_in_at: "2014-03-04 15:40:14", last_sign_in_at: "2014-03-04 15:30:44", current_sign_in_ip: "127.0.0.1", last_sign_in_ip: "127.0.0.1", first_name: "Nate", last_name: "Nemon", school_id: 2, phone_number: "123-456-7890", active: true, agreed: false, see_alum: true, password:'password'},
  {email: "jade@example.com", encrypted_password: "$2a$10$H.PJuGx5L9U..DV6sPFzT.LgUyHviMPtyIor3NeFwlH.m8UZ61Gzq", reset_password_token: nil, reset_password_sent_at: nil, remember_created_at: nil, sign_in_count: 1, current_sign_in_at: "2014-03-04 15:42:54", last_sign_in_at: "2014-03-04 15:42:54", current_sign_in_ip: "127.0.0.1", last_sign_in_ip: "127.0.0.1", first_name: "Jade", last_name: "Chen", school_id: 2, phone_number: "555-123-4567", active: true, agreed: true, see_alum: false, password:'password'},
  {email: "megan@example.com", encrypted_password: "$2a$10$TSlu5qYvTnCJ0DddOYBkBOCPsOSSEorrz6oMHj2qY65Kwi5DQzV0q", reset_password_token: nil, reset_password_sent_at: nil, remember_created_at: nil, sign_in_count: 2, current_sign_in_at: "2014-03-04 15:37:47", last_sign_in_at: "2014-03-04 15:17:44", current_sign_in_ip: "127.0.0.1", last_sign_in_ip: "127.0.0.1", first_name: "Megan", last_name: "Suckut", school_id: 2, phone_number: "555-123-4567", active: true, agreed: false, see_alum: false, password:'password'},
  {email: "mackenzie@example.com", encrypted_password: "$2a$10$iewI9Oimt94CfFds6HmXvewof4eaARV62GF7.nFRZuDCYHQTR966u", reset_password_token: nil, reset_password_sent_at: nil, remember_created_at: nil, sign_in_count: 1, current_sign_in_at: "2014-02-27 22:43:43", last_sign_in_at: "2014-02-27 22:43:43", current_sign_in_ip: "127.0.0.1", last_sign_in_ip: "127.0.0.1", first_name: "Mackenzie", last_name: "Barth", school_id: 20, phone_number: "1234567890", active: true, agreed: false, see_alum: false, password:'password'},
  {email: "kendall@example.com", encrypted_password: "$2a$10$kjdUou214P5PODe6/HB31.m8Ej05lqtyYSMDt2.SDpTacvABBMgjy", reset_password_token: nil, reset_password_sent_at: nil, remember_created_at: nil, sign_in_count: 2, current_sign_in_at: "2014-03-04 15:41:29", last_sign_in_at: "2014-03-04 15:22:44", current_sign_in_ip: "127.0.0.1", last_sign_in_ip: "127.0.0.1", first_name: "Kendall", last_name: "Siewert", school_id: 2, phone_number: "555-123-4567", active: true, agreed: false, see_alum: false, password:'password'},
  {email: "caroline@example.com", encrypted_password: "$2a$10$65sBcAwJsQiqbAMbWd51P.7pr.d0M0ZnElPKOo5W5qZR2hXg8tU7y", reset_password_token: nil, reset_password_sent_at: nil, remember_created_at: nil, sign_in_count: 1, current_sign_in_at: "2014-03-04 15:20:08", last_sign_in_at: "2014-03-04 15:20:08", current_sign_in_ip: "127.0.0.1", last_sign_in_ip: "127.0.0.1", first_name: "Caroline", last_name: "Koppel", school_id: 2, phone_number: "555-123-4567", active: false, agreed: false, see_alum: false, password:'password'},
  {email: "lily@example.com", encrypted_password: "$2a$10$Se6MgakQcJg8Y9c2k.u.M.JTCBhGLsdokH3jak1QQagsL65k/pepa", reset_password_token: nil, reset_password_sent_at: nil, remember_created_at: nil, sign_in_count: 2, current_sign_in_at: "2014-03-04 15:34:12", last_sign_in_at: "2014-03-04 15:15:50", current_sign_in_ip: "127.0.0.1", last_sign_in_ip: "127.0.0.1", first_name: "Lilly", last_name: "Allen", school_id: 2, phone_number: "555-123-4567", active: true, agreed: false, see_alum: false, password:'password'},
  {email: "hannah@example.com", encrypted_password: "$2a$10$M9xZX/XZ2XH8Gg0knGJ2dez/tlyeLOhNYiam3OGxAxVableUqFPZy", reset_password_token: nil, reset_password_sent_at: nil, remember_created_at: nil, sign_in_count: 1, current_sign_in_at: "2014-03-04 15:26:07", last_sign_in_at: "2014-03-04 15:26:07", current_sign_in_ip: "127.0.0.1", last_sign_in_ip: "127.0.0.1", first_name: "Hannah", last_name: "Lin", school_id: 2, phone_number: "555-123-4567", active: true, agreed: false, see_alum: false, password:'password'},
  {email: "maddy@example.com", encrypted_password: "$2a$10$yhFHNBmTlTxjP.KW3MI9juX/gg2.q8w.jzJfgwcUA9iwSHXlo3wlS", reset_password_token: nil, reset_password_sent_at: nil, remember_created_at: nil, sign_in_count: 2, current_sign_in_at: "2014-03-04 15:36:07", last_sign_in_at: "2014-03-04 15:24:33", current_sign_in_ip: "127.0.0.1", last_sign_in_ip: "127.0.0.1", first_name: "Maddy", last_name: "Shannon", school_id: 2, phone_number: "555-123-4567", active: true, agreed: false, see_alum: false, password:'password'},
  {email: "daniel@example.com", encrypted_password: "$2a$10$vER8ZQdXPPYKbgaNNHPYQuCvz/rwFy50uoP0O4l7ttqDA.ec11LUm", reset_password_token: nil, reset_password_sent_at: nil, remember_created_at: nil, sign_in_count: 2, current_sign_in_at: "2014-03-04 15:38:17", last_sign_in_at: "2014-03-04 15:15:10", current_sign_in_ip: "127.0.0.1", last_sign_in_ip: "127.0.0.1", first_name: "Daniel", last_name: "Schuleman", school_id: 2, phone_number: "555-123-4567", active: true, agreed: false, see_alum: false, password:'password'},
  {email: "eilis@example.com", encrypted_password: "$2a$10$V/WArLq41eGvfIGLMMLAUO4QyImt1twl2PQcNMrcX3ykFuuskeHp2", reset_password_token: nil, reset_password_sent_at: nil, remember_created_at: nil, sign_in_count: 2, current_sign_in_at: "2014-03-04 15:40:01", last_sign_in_at: "2014-03-04 15:21:49", current_sign_in_ip: "127.0.0.1", last_sign_in_ip: "127.0.0.1", first_name: "Eilis", last_name: "Lombard", school_id: 2, phone_number: "555-123-4567", active: true, agreed: false, see_alum: false, password:'password'},
  {email: "aurelie@example.com", encrypted_password: "$2a$10$xleMJiULUpGs8lGH7LJTt.4fBOegyiJe6E4wHCM0RY5et7LWv3HJW", reset_password_token: nil, reset_password_sent_at: nil, remember_created_at: nil, sign_in_count: 2, current_sign_in_at: "2014-03-04 15:36:57", last_sign_in_at: "2014-03-04 15:16:49", current_sign_in_ip: "127.0.0.1", last_sign_in_ip: "127.0.0.1", first_name: "Aurelie", last_name: "Corinthios", school_id: 2, phone_number: "555-123-4567", active: true, agreed: false, see_alum: false, password:'password'},
  {email: "kirby@example.com", encrypted_password: "$2a$10$UiIBMJiL.TQU/M6XUbhEye9bytI8g/.FdF6zBfhkw.Q0vpLQJeG9.", reset_password_token: nil, reset_password_sent_at: nil, remember_created_at: nil, sign_in_count: 1, current_sign_in_at: "2014-03-04 15:26:32", last_sign_in_at: "2014-03-04 15:26:32", current_sign_in_ip: "127.0.0.1", last_sign_in_ip: "127.0.0.1", first_name: "Kirby", last_name: "Barth", school_id: 2, phone_number: "555-123-4567", active: true, agreed: false, see_alum: false, password:'password'},
  {email: "andrea@example.com", encrypted_password: "$2a$10$OHrrZDj8dhsWa4/TWquo5.CZQg/uqrZndzzRdu29FZDpDOZZQsmoq", reset_password_token: nil, reset_password_sent_at: nil, remember_created_at: nil, sign_in_count: 2, current_sign_in_at: "2014-03-04 15:27:31", last_sign_in_at: "2014-02-27 20:14:41", current_sign_in_ip: "127.0.0.1", last_sign_in_ip: "127.0.0.1", first_name: "Andrea", last_name: "Kang", school_id: 1, phone_number: "555-123-4567", active: true, agreed: false, see_alum: false, password:'password'},
  {email: "sophie@example.com", encrypted_password: "$2a$10$F4r4rOwpus90Dg/VYdhKsuPx/emJMMc9ElFZp/t6Ydg3XX3GGyQRe", reset_password_token: nil, reset_password_sent_at: nil, remember_created_at: nil, sign_in_count: 1, current_sign_in_at: "2014-03-04 15:18:38", last_sign_in_at: "2014-03-04 15:18:38", current_sign_in_ip: "127.0.0.1", last_sign_in_ip: "127.0.0.1", first_name: "Sophie", last_name: "Jacob", school_id: 2, phone_number: "555-123-4567", active: false, agreed: false, see_alum: false, password:'password'},
  {email: "george@example.com", encrypted_password: "$2a$10$KUF/CBUU2oXpJQg895AvFupKnMEP9cMbYiOucLvE87tplrDibqU5K", reset_password_token: nil, reset_password_sent_at: nil, remember_created_at: nil, sign_in_count: 1, current_sign_in_at: "2014-03-04 15:23:59", last_sign_in_at: "2014-03-04 15:23:59", current_sign_in_ip: "127.0.0.1", last_sign_in_ip: "127.0.0.1", first_name: "George", last_name: "Markoulakis", school_id: 2, phone_number: "555-123-4567", active: false, agreed: false, see_alum: false, password:'password'},
  {email: "izzie@example.com", encrypted_password: "$2a$10$B8.KtgNc.hX3fF1RgIueWuJBOW6UxWwY6N4bJdojre6ozJN.D2kVK", reset_password_token: nil, reset_password_sent_at: nil, remember_created_at: nil, sign_in_count: 1, current_sign_in_at: "2014-03-04 15:21:08", last_sign_in_at: "2014-03-04 15:21:08", current_sign_in_ip: "127.0.0.1", last_sign_in_ip: "127.0.0.1", first_name: "Izzie", last_name: "Baum", school_id: 2, phone_number: "555-123-4567", active: false, agreed: false, see_alum: false, password:'password'},
  {email: "somi@example.com", encrypted_password: "$2a$10$7SrhEGD.XjQxkvrBHhye6OC8xG66Sf6zUNi7cPj/fWDxLSP5IXs1y", reset_password_token: nil, reset_password_sent_at: nil, remember_created_at: nil, sign_in_count: 1, current_sign_in_at: "2014-03-04 15:44:32", last_sign_in_at: "2014-03-04 15:44:32", current_sign_in_ip: "127.0.0.1", last_sign_in_ip: "127.0.0.1", first_name: "Somi", last_name: "Hubbard", school_id: 2, phone_number: "555-123-4567", active: true, agreed: false, see_alum: false, password:'password'},
  {email: "sam@example.com", encrypted_password: "$2a$10$6YaNctTO.r3U5.32GxfCiOq48AUf3TTTA9v8nzoxRZeKm5YeKTIz2", reset_password_token: nil, reset_password_sent_at: nil, remember_created_at: nil, sign_in_count: 1, current_sign_in_at: "2014-03-04 15:45:09", last_sign_in_at: "2014-03-04 15:45:09", current_sign_in_ip: "127.0.0.1", last_sign_in_ip: "127.0.0.1", first_name: "Sam", last_name: "Spector", school_id: 2, phone_number: "555-123-4567", active: true, agreed: false, see_alum: false, password:'password'},
  {email: "kyra@example.com", encrypted_password: "$2a$10$5JofbR9p3tI6R3/7HyG8R.ISylBzLVvniuP8kh3miYUPI4erz6NSi", reset_password_token: nil, reset_password_sent_at: nil, remember_created_at: nil, sign_in_count: 1, current_sign_in_at: "2014-03-04 15:46:06", last_sign_in_at: "2014-03-04 15:46:06", current_sign_in_ip: "127.0.0.1", last_sign_in_ip: "127.0.0.1", first_name: "Kyra", last_name: "Hurwitz", school_id: 2, phone_number: "555-123-4567", active: true, agreed: false, see_alum: false, password:'password'},
  {email: "jenny@example.com", encrypted_password: "$2a$10$cSroiu3gj6dptv1Agvzxn.bHLlM5E61eoGVNbA9Z1iDPdmfcEJlUa", reset_password_token: nil, reset_password_sent_at: nil, remember_created_at: nil, sign_in_count: 2, current_sign_in_at: "2014-03-04 15:37:25", last_sign_in_at: "2014-03-04 15:25:26", current_sign_in_ip: "127.0.0.1", last_sign_in_ip: "127.0.0.1", first_name: "Jenny", last_name: "Schackett", school_id: 2, phone_number: "555-123-4567", active: true, agreed: false, see_alum: false, password:'password'},
  {email: "hyo@example.com", encrypted_password: "$2a$10$APC2zsD4fdZ.E0c4.t00I.8d0e7bdfZOkCOWZgzgZqrou9ZiAqJ0C", reset_password_token: nil, reset_password_sent_at: nil, remember_created_at: nil, sign_in_count: 1, current_sign_in_at: "2014-03-04 15:46:56", last_sign_in_at: "2014-03-04 15:46:56", current_sign_in_ip: "127.0.0.1", last_sign_in_ip: "127.0.0.1", first_name: "Hyo", last_name: "Park", school_id: 2, phone_number: "555-123-4567", active: true, agreed: false, see_alum: true, password:'password'}
])
Status.create!([
  {position_id: 1, user_id: 1},
  {position_id: 2, user_id: 2},
  {position_id: 1, user_id: 3},
  {position_id: 1, user_id: 4},
  {position_id: 1, user_id: 5},
  {position_id: 1, user_id: 6},
  {position_id: 1, user_id: 7},
  {position_id: 1, user_id: 8},
  {position_id: 1, user_id: 9},
  {position_id: 1, user_id: 10},
  {position_id: 1, user_id: 11},
  {position_id: 2, user_id: 12},
  {position_id: 2, user_id: 13},
  {position_id: 2, user_id: 14},
  {position_id: 1, user_id: 15},
  {position_id: 1, user_id: 15},
  {position_id: 6, user_id: 15},
  {position_id: 8, user_id: 16},
  {position_id: 1, user_id: 17},
  {position_id: 6, user_id: 18},
  {position_id: 6, user_id: 19},
  {position_id: 2, user_id: 20},
  {position_id: 2, user_id: 21},
  {position_id: 3, user_id: 22},
  {position_id: 8, user_id: 23},
  {position_id: 3, user_id: 24},
  {position_id: 3, user_id: 25},
  {position_id: 3, user_id: 26},
  {position_id: 4, user_id: 27},
  {position_id: 4, user_id: 28},
  {position_id: 4, user_id: 29},
  {position_id: 7, user_id: 30},
  {position_id: 7, user_id: 31},
  {position_id: 9, user_id: 32},
  {position_id: 9, user_id: 33},
  {position_id: 9, user_id: 34},
  {position_id: 8, user_id: 35},
  {position_id: 6, user_id: 36}
])


Score.create!([
  {user_id: 1, page_shortname: 'style', correct: 2, total: 8},
  {user_id: 2, page_shortname: 'style', correct: 1, total: 8},
  {user_id: 3, page_shortname: 'style', correct: 4, total: 8},
  {user_id: 4, page_shortname: 'style', correct: 5, total: 8},
  {user_id: 5, page_shortname: 'style', correct: 3, total: 6},
  {user_id: 6, page_shortname: 'style', correct: 6, total: 6},
  {user_id: 7, page_shortname: 'style', correct: 4, total: 8},
  {user_id: 8, page_shortname: 'style', correct: 1, total: 8},
  {user_id: 9, page_shortname: 'style', correct: 0, total: 8},
  {user_id: 10, page_shortname: 'style', correct: 7, total: 8},
  {user_id: 11, page_shortname: 'style', correct: 0, total: 8},
  {user_id: 12, page_shortname: 'expectations', correct: 1, total: 6},
  {user_id: 13, page_shortname: 'expectations', correct: 5, total: 6},
  {user_id: 14, page_shortname: 'style', correct: 8, total: 8},
  {user_id: 15, page_shortname: 'style', correct: 3, total: 8},
  {user_id: 16, page_shortname: 'style', correct: 2, total: 8},
  {user_id: 17, page_shortname: 'style', correct: 1, total: 8},
  {user_id: 18, page_shortname: 'style', correct: 4, total: 8},
  {user_id: 19, page_shortname: 'style', correct: 5, total: 8},
  {user_id: 20, page_shortname: 'style', correct: 3, total: 6},
  {user_id: 21, page_shortname: 'style', correct: 6, total: 6},
  {user_id: 22, page_shortname: 'style', correct: 4, total: 8},
  {user_id: 23, page_shortname: 'style', correct: 1, total: 8},
  {user_id: 24, page_shortname: 'style', correct: 0, total: 8},
  {user_id: 25, page_shortname: 'style', correct: 7, total: 8},
  {user_id: 26, page_shortname: 'style', correct: 0, total: 8},
  {user_id: 27, page_shortname: 'expectations', correct: 1, total: 6},
  {user_id: 28, page_shortname: 'expectations', correct: 5, total: 6},
  {user_id: 29, page_shortname: 'style', correct: 8, total: 8},
  {user_id: 30, page_shortname: 'style', correct: 3, total: 8},
  {user_id: 31, page_shortname: 'expectations', correct: 1, total: 6},
  {user_id: 32, page_shortname: 'expectations', correct: 5, total: 6},
])
