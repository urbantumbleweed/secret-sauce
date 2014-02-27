# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

eic = Position.create({
	name: 'editor-in-chief'
})

me = Position.create({
	name: 'managing-editor',
})

page_names = [
		'leadership', 
		'tone', 
		'style',
		'process',
		'spreadsheet',
		'login',
		'add-user',
		'update-staff',
		'profile',
		'post',
		'final-checks',
		'add-photos',
		'add-video',
		'slideshow',
		'sections'
	]

page_names.each do |name|
	page = Page.create(name: name)
	eic.pages << page
	me.pages << page
end

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




