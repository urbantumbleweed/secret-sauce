# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Position.create({
	name: 'editor-in-chief',
	pages: [
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
})

Position.create({
	name: 'managing-editor',
	pages: [
		'tone', 
		'style',
		'process',
		'spreadsheet',
		'login',
		'profile',
		'post',
		'add-photos',
		'add-video',
		'slideshow',
		'sections'
	]
})

School.create({
	name: "Northwestern",
	instagramUrl: 'Instagram URL',
	spoonUrl: 'Spoon URL',
	fbUrl: 'Facebook URL'
})

School.create({
	name: "NYU",
	twitterUrl: "Twitter URL",
	instagramUrl: 'Instagram URL',
	spoonUrl: 'Spoon URL',
	fbUrl: 'Facebook URL',
})

School.create({
	name: "Michigan",
	spoonUrl: 'Spoon URL',
	fbUrl: 'Facebook URL'
})

