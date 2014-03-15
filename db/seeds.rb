# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)



page_names = {
		'structure' => 'Structure',
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
		'create_post' => 'Create a Post',
		'best_practices' => 'Best Practices',
		'final_checks' => 'Final Checks',
		'add_photos' => 'Add Photos',
		'section_intro' => 'Next...',
		'recipes' => 'Recipes',
		'restaurants' => 'Restaurants',
		'editorial_sections' => 'Sections',
		'flickr' => 'Flickr',
		'expectations' => 'Expectations',
		'photo_sections' => 'Sections',
		'fave_photos' => 'Photos We Love',
		'photo_editing' => 'Photo Editing',
		'marketing_structure' => 'Marketing Teams',
		'plan_an_event' => 'Plan an Event',
		'social_media' => 'Social Media',
		'plan_an_event' => 'Plan an Event',
		'free_ideas' => 'Free Ideas',
		'marketing_materials' => 'Marketing Materials',
		'analytics' => 'Analytics',
		'calendar' => 'Events Calendar',
		'editorial_leadership' => 'Leadership',
		'editing' => 'Editing Best Practices',
		'photo_leadership' => 'Leadership',
		'marketing_leadership' => 'Leadership',
		'meeting' => 'Your First Meeting',
		'extra_skills' => 'Extra Skills'
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

t = Position.create({
	name: 'Treasurer',
	shortname: 'treasurer'
})

# THESE SHORTNAMES ARE IN THE EDITORIAL FOLDER::

eic.pages = eic.pages + [
	Page.find_by_shortname('structure'),
	Page.find_by_shortname('tone'), 
	Page.find_by_shortname('style'),
	Page.find_by_shortname('editorial_process'), 
	Page.find_by_shortname('chapter_spreadsheet'), 
	Page.find_by_shortname('login'), 
	Page.find_by_shortname('add_user'), 
	Page.find_by_shortname('update_staff'), 
	Page.find_by_shortname('profile'), 
	Page.find_by_shortname('create_post'), 
	Page.find_by_shortname('best_practices'), 
	Page.find_by_shortname('final_checks'), 
	Page.find_by_shortname('add_photos'), 
	Page.find_by_shortname('section_intro'), 
	Page.find_by_shortname('recipes'),
	Page.find_by_shortname('restaurants'),
	Page.find_by_shortname('editorial_sections'),
	Page.find_by_shortname('editorial_leadership'),
	Page.find_by_shortname('editing'), 
	Page.find_by_shortname('extra_skills'),
	Page.find_by_shortname('meeting')
	]

	# STOP


ce.pages = ce.pages + [
	Page.find_by_shortname('structure'),
	Page.find_by_shortname('tone'),
	Page.find_by_shortname('style'),
	Page.find_by_shortname('editorial_process'),
	Page.find_by_shortname('chapter_spreadsheet'),
	Page.find_by_shortname('login'),
	Page.find_by_shortname('profile'),
	Page.find_by_shortname('create_post'),
	Page.find_by_shortname('best_practices'), 
	Page.find_by_shortname('add_photos'),
	Page.find_by_shortname('section_intro'), 
	Page.find_by_shortname('recipes'),
	Page.find_by_shortname('restaurants'),
	Page.find_by_shortname('editorial_sections'),
	Page.find_by_shortname('editing'),
	Page.find_by_shortname('extra_skills')
	]

me.pages = me.pages + [
	Page.find_by_shortname('structure'),
	Page.find_by_shortname('tone'),
	Page.find_by_shortname('style'),
	Page.find_by_shortname('editorial_process'),
	Page.find_by_shortname('chapter_spreadsheet'),
	Page.find_by_shortname('login'),
	Page.find_by_shortname('profile'),
	Page.find_by_shortname('create_post'),
	Page.find_by_shortname('best_practices'), 
	Page.find_by_shortname('add_photos'),
	Page.find_by_shortname('section_intro'), 
	Page.find_by_shortname('recipes'),
	Page.find_by_shortname('restaurants'),
	Page.find_by_shortname('editorial_sections'),
	Page.find_by_shortname('editorial_leadership'),
	Page.find_by_shortname('editing'),
	Page.find_by_shortname('extra_skills'),
	Page.find_by_shortname('meeting')
	]


w.pages = w.pages + [
	Page.find_by_shortname('structure'),
	Page.find_by_shortname('tone'),
	Page.find_by_shortname('style'),
	Page.find_by_shortname('editorial_process'),
	Page.find_by_shortname('chapter_spreadsheet'),
	Page.find_by_shortname('login'),
	Page.find_by_shortname('profile'),
	Page.find_by_shortname('create_post'),
	Page.find_by_shortname('best_practices'), 
	Page.find_by_shortname('add_photos'),
	Page.find_by_shortname('section_intro'), 
	Page.find_by_shortname('recipes'),
	Page.find_by_shortname('restaurants'),
	Page.find_by_shortname('editorial_sections'),
	Page.find_by_shortname('extra_skills')
	]


nc.pages = nc.pages + [
	Page.find_by_shortname('tone'),
	Page.find_by_shortname('style'),
	Page.find_by_shortname('contributor_process'),
	Page.find_by_shortname('contributor_spreadsheet'),
	Page.find_by_shortname('login'),
	Page.find_by_shortname('profile'),
	Page.find_by_shortname('create_post'),
	Page.find_by_shortname('best_practices'), 
	Page.find_by_shortname('add_photos'),
	Page.find_by_shortname('section_intro'), 
	Page.find_by_shortname('recipes'),
	Page.find_by_shortname('editorial_sections'),
	Page.find_by_shortname('flickr'),
	Page.find_by_shortname('expectations'),
	Page.find_by_shortname('fave_photos'),
	Page.find_by_shortname('photo_editing'),
	Page.find_by_shortname('extra_skills')
]



# THESE SHORTNAMES ARE IN THE PHOTO FOLDER::

p.pages = p.pages + [
	Page.find_by_shortname('structure'),
	Page.find_by_shortname('photo_process'),
	Page.find_by_shortname('flickr'),
	Page.find_by_shortname('expectations'),
	Page.find_by_shortname('fave_photos'),
	Page.find_by_shortname('photo_editing'),
	Page.find_by_shortname('photo_sections'),
	Page.find_by_shortname('extra_skills')
	]

pd.pages = p.pages + [
	Page.find_by_shortname('photo_leadership'),
	Page.find_by_shortname('meeting'),
	]


# STOP

# THESE SHORTNAMES ARE IN THE MARKETING FOLDER::

mtm.pages = mtm.pages + [
	Page.find_by_shortname('structure'),
	Page.find_by_shortname('marketing_structure'),
	Page.find_by_shortname('plan_an_event'),
	Page.find_by_shortname('social_media'),
	Page.find_by_shortname('free_ideas'),
	Page.find_by_shortname('marketing_materials'),
	Page.find_by_shortname('analytics'),
	Page.find_by_shortname('calendar'),
	Page.find_by_shortname('extra_skills')
	]

bd.pages = mtm.pages + [
	Page.find_by_shortname('marketing_leadership'),
	Page.find_by_shortname('meeting'),
	]

t.pages = mtm.pages + []

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
	name:          'Swarthmore',
	shortname:     'swat',
	twitter_url:   'https://twitter.com/spoonuniversity',
	instagram_url: 'http://instagram.com/spoonuniversity',
	spoon_url:     'http://swat.spoonuniversity.com',
	facebook_url:  'https://www.facebook.com/SpoonUniversity',
	color_1:       '#c12441',
	color_2:       '#9f1d35'
})

User.destroy_all

User.create!([
  {email: "sarah@example.com", encrypted_password: "$2a$10$NrBXqWOGH6NQv4GnPDQE8eptIxXCi5yacTqk2Ux.DnpIZvBjMh5PO", reset_password_token: nil, reset_password_sent_at: nil, remember_created_at: nil, sign_in_count: 1, current_sign_in_at: "2014-03-13 04:40:58", last_sign_in_at: "2014-03-13 04:40:58", current_sign_in_ip: "127.0.0.1", last_sign_in_ip: "127.0.0.1", first_name: "Sarah", last_name: "Adler", school_id: 1, phone_number: "5126587019", active: true, agreed: false, see_alum: false, password: 'password'}
])
Status.create!([
  {position_id: 1, user_id: 1}
])
