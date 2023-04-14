# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

course_one = Course.create(title: 'HTML & CSS Crash Course', 
description: 'HTML & CSS are the core building blocks of front-end web development and are used to structure website content and control the visual design of them too.', 
course_outline: ['Introduction to HTML', 'HTML Basics', 'HTML forms', 'CSS Basics', 'Classes & Selectors', 'HTML 5 Semenatics' 'Chrome Dev tools', 'CSS Layouts & Positions', 'Pseudo Classes & Elements', 'Intro to Media Queries'], 
image: 'https://cdn.fs.teachablecdn.com/6oadsMCBQ82r522pzJkz')

course_one = Course.create(title: 'HTML & CSS Crash Course', 
	description: 'HTML & CSS are the core building blocks of front-end web development and are used to structure website content and control the visual design of them too.', 
	course_outline: ['Introduction to HTML', 'HTML Basics', 'HTML forms', 'CSS Basics', 'Classes & Selectors', 'HTML 5 Semenatics' 'Chrome Dev tools', 'CSS Layouts & Positions', 'Pseudo Classes & Elements', 'Intro to Media Queries'], 
	image: 'https://cdn.fs.teachablecdn.com/6oadsMCBQ82r522pzJkz')
	
course_two = Course.create(title: 'Node.js Crash Course',
		description: 'In this course you will learn how to install Node & how to use it on your own computer. We will also show you how to power a website using Node.js & Express (a node web framework), from scratch.',
		course_outline: ['Introduction and setup', 'Node.js basics', 'Clients & servers', 'Requests & Response', 'Node package manager(npm)', 'Making express apps', 'View engines', 'Middleware', 'Mongodb', 'Get, Post & Delete Requests' 'Express Router & MVC'],
		image: 'https://cdn.fs.teachablecdn.com/UBiqMLppSEihUD5LI7BA')

course_three = Course.create(title: 'Modern JavaScript',
		description: 'If you are new to JavaScript and want to master it completely then look no further than this 20-hr JavaScript master class.In this course you will learn JavaScript from the ground up, using modern techniques and workflows.',
		course_outline: ['Course Introductin', 'Javascript Basics', 'Control Flow Basics', 'Functions & Methods', 'Object Literals', 'The Document Object Model', 'Forms & Form Events', 'Array Methods', 'Dates & Times', 'Async JavaScript', 'Local Storage', 'Object Oriented JavaScript'],
		image: 'https://cdn.fs.teachablecdn.com/fMcgVhkQ6enjVY1aS8Mg')

course_four = Course.create(title: 'Make Your Own CSS Library with SASS',
		description: 'In this series you will learn SASS from the ground-up, by building your own simple, lightweight CSS library similar to something like Bootstrap.',
		course_outline: ['Compiling SASS', 'Variables', 'Partials', 'Nested Rules', 'Using Math', 'Maps', 'Loops', 'Conditionals', 'Parent Selectors', 'Mixins', 'Functions', 'Utilities', 'Breakpoints', 'Making a Grid System', 'Using @extend', 'Using the CSS Library', 'Purging CSS'],
		image: 'https://cdn.fs.teachablecdn.com/wJFiY5nHRHCI35Df6OPJ')

course_five = Course.create(title: 'Getting Started with Next.js',
		description: 'In this Next.js tutorial series we will learn how to create a Next.js application from the ground up & see how to deploy it to the web using Vercel & GitHub',
		course_outline: ['Introduction and setup', 'Pages & routes', 'Adding other components', 'Linking between pages', 'Creating a layout file', 'Adding styles', 'Custom 404 pages', 'Redirecting users', 'Images and metadata', 'Fetching data', 'Dynamic routes', 'Fetching a single item', 'Deploying the app'],
		image: 'https://cdn.fs.teachablecdn.com/rGOFGfRTKu5iD5FRTewa'
	)

course_six = Course.create(title: 'TypeScript Tutorial',
		description: 'In this TypeScript tutorial series you will learn TypeScript from scratch and learn about the many benefits it has to offer. I do assume basic JavaScript knowledge.',
		course_outline: ['Introduction', 'Compiling Typesscript', 'Type Basics', 'Objects & arrays', 'Explicit types', 'Dynamic types', 'Better workflow', 'Functions', 'Type aliases', 'Function types', 'The DOM & Typecasting', 'Classes', 'Modifiers', 'Modules', 'Interfaces with Classes', 'Rendering HTML', 'Generics'],
		image: 'https://cdn.fs.teachablecdn.com/ZGQ0dgbR7CeXTfMJY5fl')


teacher_one = Teacher.create(
	name: "Shaddai", 
	image: '"https://randomuser.me/api/portraits/men/4.jpg"', 
	professional_summary: "I am a Teacher", 
	hourly_rating: 25,  
	available_days: [
		{
		'day' => 'monday',
		'available_time' => [
			{
				'timeslot' => '9:00am - 10:00am',
				'available' => true
			},
			{
				'timeslot' => '10:00am - 11:00am',
				'available' => true
			},
			{
				'timeslot' => '12:00pm - 13:00pm',
				'available' => true
			},
			{
				'timeslot' => '14:00pm - 15:00m',
				'available' => true
			},
		]        
		},
		{
			'day' => 'Wednesday',
			'available_time' => [
			{
				'timeslot' => '9:00am - 10:00am',
				'available' => true
			},
			{
				'timeslot' => '10:00am - 11:00am',
				'available' => true
			},
			{
				'timeslot' => '12:00pm - 13:00pm',
				'available' => true
			},
			{
				'timeslot' => '14:00pm - 15:00m',
				'available' => true
			},
		]
		}
	], course_id: course_one.id
)

teacher_two = Teacher.create(
	name: "keenan", 
	image: "https://randomuser.me/api/portraits/women/3.jpg", 
	professional_summary: "I am backend engineer", 
	hourly_rating: 25,  
	available_days: [
		{
		'day' => 'Tuesday',
		'available_time' => [
			{
				'timeslot' => '9:00am - 10:00am',
				'available' => true
			},
			{
				'timeslot' => '10:00am - 11:00am',
				'available' => true
			},
			{
				'timeslot' => '12:00pm - 13:00pm',
				'available' => true
			},
			{
				'timeslot' => '14:00pm - 15:00m',
				'available' => true
			},
		]        
		},
		{
			'day' => 'Wednesday',
			'available_time' => [
			{
				'timeslot' => '9:00am - 10:00am',
				'available' => true
			},
			{
				'timeslot' => '10:00am - 11:00am',
				'available' => true
			},
			{
				'timeslot' => '12:00pm - 13:00pm',
				'available' => true
			},
			{
				'timeslot' => '14:00pm - 15:00m',
				'available' => true
			},
		]
		}
	], course_id: course_two.id
)

teacher_three = Teacher.create(
	name: "Onomeh", 
	image: "https://randomuser.me/api/portraits/men/8.jpg", 
  professional_summary: "I am front-end engineer", 
	hourly_rating: 25,  
	available_days: [
		{
		'day' => 'Thursday',
		'available_time' => [
			{
				'timeslot' => '9:00am - 10:00am',
				'available' => true
			},
			{
				'timeslot' => '10:00am - 11:00am',
				'available' => true
			},
			{
				'timeslot' => '12:00pm - 13:00pm',
				'available' => true
			},
			{
				'timeslot' => '14:00pm - 15:00m',
				'available' => true
			},
		]        
		},
		{
			'day' => 'Wednesday',
			'available_time' => [
			{
				'timeslot' => '9:00am - 10:00am',
				'available' => true
			},
			{
				'timeslot' => '10:00am - 11:00am',
				'available' => true
			},
			{
				'timeslot' => '12:00pm - 13:00pm',
				'available' => true
			},
			{
				'timeslot' => '14:00pm - 15:00m',
				'available' => true
			},
		]
		}
	], course_id: course_three.id
)

teacher_four = Teacher.create(
	name: "Anko", 
	image: "https://randomuser.me/api/portraits/women/8.jpg", 
  professional_summary: "I am backend engineer", 
	hourly_rating: 25,  
	available_days: [
		{
		'day' => 'Sunday',
		'available_time' => [
			{
				'timeslot' => '9:00am - 10:00am',
				'available' => true
			},
			{
				'timeslot' => '10:00am - 11:00am',
				'available' => true
			},
			{
				'timeslot' => '12:00pm - 13:00pm',
				'available' => true
			},
			{
				'timeslot' => '14:00pm - 15:00m',
				'available' => true
			},
		]        
		},
		{
			'day' => 'Wednesday',
			'available_time' => [
			{
				'timeslot' => '9:00am - 10:00am',
				'available' => true
			},
			{
				'timeslot' => '10:00am - 11:00am',
				'available' => true
			},
			{
				'timeslot' => '12:00pm - 13:00pm',
				'available' => true
			},
			{
				'timeslot' => '14:00pm - 15:00m',
				'available' => true
			},
		]
		}
	], course_id: course_four.id
)

teacher_five = Teacher.create(
	name: "Botes", 
	image: "https://randomuser.me/api/portraits/men/12.jpg", 
  professional_summary: "I am backend engineer", 
	hourly_rating: 30,  
	available_days: [
		{
		'day' => 'Tuesday',
		'available_time' => [
			{
				'timeslot' => '9:00am - 10:00am',
				'available' => true
			},
			{
				'timeslot' => '10:00am - 11:00am',
				'available' => true
			},
			{
				'timeslot' => '12:00pm - 13:00pm',
				'available' => true
			},
			{
				'timeslot' => '14:00pm - 15:00m',
				'available' => true
			},
		]        
		},
		{
			'day' => 'Wednesday',
			'available_time' => [
			{
				'timeslot' => '9:00am - 10:00am',
				'available' => true
			},
			{
				'timeslot' => '10:00am - 11:00am',
				'available' => true
			},
			{
				'timeslot' => '12:00pm - 13:00pm',
				'available' => true
			},
			{
				'timeslot' => '14:00pm - 15:00m',
				'available' => true
			},
		]
		}
	], course_id: course_five.id
)

teacher_six = Teacher.create(
	name: "kennedy", 
	image: 'https://randomuser.me/api/portraits/men/12.jpg', 
  professional_summary: "I am backend engineer", 
	hourly_rating: 27,  
	available_days: [
		{
		'day' => 'Tuesday',
		'available_time' => [
			{
				'timeslot' => '9:00am - 10:00am',
				'available' => true
			},
			{
				'timeslot' => '10:00am - 11:00am',
				'available' => true
			},
			{
				'timeslot' => '12:00pm - 13:00pm',
				'available' => true
			},
			{
				'timeslot' => '14:00pm - 15:00m',
				'available' => true
			},
		]        
		},
		{
			'day' => 'Monday',
			'available_time' => [
			{
				'timeslot' => '9:00am - 10:00am',
				'available' => true
			},
			{
				'timeslot' => '10:00am - 11:00am',
				'available' => true
			},
			{
				'timeslot' => '12:00pm - 13:00pm',
				'available' => true
			},
			{
				'timeslot' => '14:00pm - 15:00m',
				'available' => true
			},
		]
		}
	], course_id: course_six.id
)

teacher_one = Teacher.create(
	name: "Shaddai", 
	image: '"https://randomuser.me/api/portraits/men/4.jpg"', 
  professional_summary: "I am a Teacher", 
	hourly_rating: 25,  
	available_days: [
		{
		'day' => 'monday',
		'available_time' => [
			{
				'timeslot' => '9:00am - 10:00am',
				'available' => true
			},
			{
				'timeslot' => '10:00am - 11:00am',
				'available' => true
			},
			{
				'timeslot' => '12:00pm - 13:00pm',
				'available' => true
			},
			{
				'timeslot' => '14:00pm - 15:00m',
				'available' => true
			},
		]        
		},
		{
			'day' => 'Wednesday',
			'available_time' => [
			{
				'timeslot' => '9:00am - 10:00am',
				'available' => true
			},
			{
				'timeslot' => '10:00am - 11:00am',
				'available' => true
			},
			{
				'timeslot' => '12:00pm - 13:00pm',
				'available' => true
			},
			{
				'timeslot' => '14:00pm - 15:00m',
				'available' => true
			},
		]
		}
	], course_id: course_two.id
)

teacher_two = Teacher.create(
	name: "keenan", 
	image: "https://randomuser.me/api/portraits/women/3.jpg", 
  professional_summary: "I am backend engineer", 
	hourly_rating: 25,  
	available_days: [
		{
		'day' => 'Tuesday',
		'available_time' => [
			{
				'timeslot' => '9:00am - 10:00am',
				'available' => true
			},
			{
				'timeslot' => '10:00am - 11:00am',
				'available' => true
			},
			{
				'timeslot' => '12:00pm - 13:00pm',
				'available' => true
			},
			{
				'timeslot' => '14:00pm - 15:00m',
				'available' => true
			},
		]        
		},
		{
			'day' => 'Wednesday',
			'available_time' => [
			{
				'timeslot' => '9:00am - 10:00am',
				'available' => true
			},
			{
				'timeslot' => '10:00am - 11:00am',
				'available' => true
			},
			{
				'timeslot' => '12:00pm - 13:00pm',
				'available' => true
			},
			{
				'timeslot' => '14:00pm - 15:00m',
				'available' => true
			},
		]
		}
	], course_id: course_two.id
)

teacher_three = Teacher.create(
	name: "Onomeh", 
	image: "https://randomuser.me/api/portraits/men/8.jpg", 
  professional_summary: "I am front-end engineer", 
	hourly_rating: 25,  
	available_days: [
		{
		'day' => 'Thursday',
		'available_time' => [
			{
				'timeslot' => '9:00am - 10:00am',
				'available' => true
			},
			{
				'timeslot' => '10:00am - 11:00am',
				'available' => true
			},
			{
				'timeslot' => '12:00pm - 13:00pm',
				'available' => true
			},
			{
				'timeslot' => '14:00pm - 15:00m',
				'available' => true
			},
		]        
		},
		{
			'day' => 'Wednesday',
			'available_time' => [
			{
				'timeslot' => '9:00am - 10:00am',
				'available' => true
			},
			{
				'timeslot' => '10:00am - 11:00am',
				'available' => true
			},
			{
				'timeslot' => '12:00pm - 13:00pm',
				'available' => true
			},
			{
				'timeslot' => '14:00pm - 15:00m',
				'available' => true
			},
		]
		}
	], course_id: course_two.id
)

teacher_four = Teacher.create(
	name: "Anko", 
	image: "https://randomuser.me/api/portraits/women/8.jpg", 
  professional_summary: "I am backend engineer", 
	hourly_rating: 25,  
	available_days: [
		{
		'day' => 'Sunday',
		'available_time' => [
			{
				'timeslot' => '9:00am - 10:00am',
				'available' => true
			},
			{
				'timeslot' => '10:00am - 11:00am',
				'available' => true
			},
			{
				'timeslot' => '12:00pm - 13:00pm',
				'available' => true
			},
			{
				'timeslot' => '14:00pm - 15:00m',
				'available' => true
			},
		]        
		},
		{
			'day' => 'Wednesday',
			'available_time' => [
			{
				'timeslot' => '9:00am - 10:00am',
				'available' => true
			},
			{
				'timeslot' => '10:00am - 11:00am',
				'available' => true
			},
			{
				'timeslot' => '12:00pm - 13:00pm',
				'available' => true
			},
			{
				'timeslot' => '14:00pm - 15:00m',
				'available' => true
			},
		]
		}
	], course_id: course_two.id
)

teacher_five = Teacher.create(
	name: "Botes", 
	image: "https://randomuser.me/api/portraits/men/12.jpg", 
  professional_summary: "I am backend engineer", 
	hourly_rating: 30,  
	available_days: [
		{
		'day' => 'Tuesday',
		'available_time' => [
			{
				'timeslot' => '9:00am - 10:00am',
				'available' => true
			},
			{
				'timeslot' => '10:00am - 11:00am',
				'available' => true
			},
			{
				'timeslot' => '12:00pm - 13:00pm',
				'available' => true
			},
			{
				'timeslot' => '14:00pm - 15:00m',
				'available' => true
			},
		]        
		},
		{
			'day' => 'Wednesday',
			'available_time' => [
			{
				'timeslot' => '9:00am - 10:00am',
				'available' => true
			},
			{
				'timeslot' => '10:00am - 11:00am',
				'available' => true
			},
			{
				'timeslot' => '12:00pm - 13:00pm',
				'available' => true
			},
			{
				'timeslot' => '14:00pm - 15:00m',
				'available' => true
			},
		]
		}
	], course_id: course_two.id
)

teacher_six = Teacher.create(
	name: "kennedy", 
	image: 'https://randomuser.me/api/portraits/men/12.jpg', 
  professional_summary: "I am backend engineer", 
	hourly_rating: 27,  
	available_days: [
		{
		'day' => 'Tuesday',
		'available_time' => [
			{
				'timeslot' => '9:00am - 10:00am',
				'available' => true
			},
			{
				'timeslot' => '10:00am - 11:00am',
				'available' => true
			},
			{
				'timeslot' => '12:00pm - 13:00pm',
				'available' => true
			},
			{
				'timeslot' => '14:00pm - 15:00m',
				'available' => true
			},
		]        
		},
		{
			'day' => 'Monday',
			'available_time' => [
			{
				'timeslot' => '9:00am - 10:00am',
				'available' => true
			},
			{
				'timeslot' => '10:00am - 11:00am',
				'available' => true
			},
			{
				'timeslot' => '12:00pm - 13:00pm',
				'available' => true
			},
			{
				'timeslot' => '14:00pm - 15:00m',
				'available' => true
			},
		]
		}
	], course_id: course_two.id
) 

teacher_one3 = Teacher.create(
	name: "Shaddai", 
	image: '"https://randomuser.me/api/portraits/men/4.jpg"', 
  professional_summary: "I am a Teacher", 
	hourly_rating: 25,  
	available_days: [
		{
		'day' => 'monday',
		'available_time' => [
			{
				'timeslot' => '9:00am - 10:00am',
				'available' => true
			},
			{
				'timeslot' => '10:00am - 11:00am',
				'available' => true
			},
			{
				'timeslot' => '12:00pm - 13:00pm',
				'available' => true
			},
			{
				'timeslot' => '14:00pm - 15:00m',
				'available' => true
			},
		]        
		},
		{
			'day' => 'Wednesday',
			'available_time' => [
			{
				'timeslot' => '9:00am - 10:00am',
				'available' => true
			},
			{
				'timeslot' => '10:00am - 11:00am',
				'available' => true
			},
			{
				'timeslot' => '12:00pm - 13:00pm',
				'available' => true
			},
			{
				'timeslot' => '14:00pm - 15:00m',
				'available' => true
			},
		]
		}
	], course_id: course_three.id
)

teacher_two3 = Teacher.create(
	name: "keenan", 
	image: "https://randomuser.me/api/portraits/women/3.jpg", 
  professional_summary: "I am backend engineer", 
	hourly_rating: 25,  
	available_days: [
		{
		'day' => 'Tuesday',
		'available_time' => [
			{
				'timeslot' => '9:00am - 10:00am',
				'available' => true
			},
			{
				'timeslot' => '10:00am - 11:00am',
				'available' => true
			},
			{
				'timeslot' => '12:00pm - 13:00pm',
				'available' => true
			},
			{
				'timeslot' => '14:00pm - 15:00m',
				'available' => true
			},
		]        
		},
		{
			'day' => 'Wednesday',
			'available_time' => [
			{
				'timeslot' => '9:00am - 10:00am',
				'available' => true
			},
			{
				'timeslot' => '10:00am - 11:00am',
				'available' => true
			},
			{
				'timeslot' => '12:00pm - 13:00pm',
				'available' => true
			},
			{
				'timeslot' => '14:00pm - 15:00m',
				'available' => true
			},
		]
		}
	], course_id: course_three.id
)

teacher_three3 = Teacher.create(
	name: "Onomeh", 
	image: "https://randomuser.me/api/portraits/men/8.jpg", 
  professional_summary: "I am front-end engineer", 
	hourly_rating: 25,  
	available_days: [
		{
		'day' => 'Thursday',
		'available_time' => [
			{
				'timeslot' => '9:00am - 10:00am',
				'available' => true
			},
			{
				'timeslot' => '10:00am - 11:00am',
				'available' => true
			},
			{
				'timeslot' => '12:00pm - 13:00pm',
				'available' => true
			},
			{
				'timeslot' => '14:00pm - 15:00m',
				'available' => true
			},
		]        
		},
		{
			'day' => 'Wednesday',
			'available_time' => [
			{
				'timeslot' => '9:00am - 10:00am',
				'available' => true
			},
			{
				'timeslot' => '10:00am - 11:00am',
				'available' => true
			},
			{
				'timeslot' => '12:00pm - 13:00pm',
				'available' => true
			},
			{
				'timeslot' => '14:00pm - 15:00m',
				'available' => true
			},
		]
		}
	], course_id: course_three.id
)

teacher_four3 = Teacher.create(
	name: "Anko", 
	image: "https://randomuser.me/api/portraits/women/8.jpg", 
  professional_summary: "I am backend engineer", 
	hourly_rating: 25,  
	available_days: [
		{
		'day' => 'Sunday',
		'available_time' => [
			{
				'timeslot' => '9:00am - 10:00am',
				'available' => true
			},
			{
				'timeslot' => '10:00am - 11:00am',
				'available' => true
			},
			{
				'timeslot' => '12:00pm - 13:00pm',
				'available' => true
			},
			{
				'timeslot' => '14:00pm - 15:00m',
				'available' => true
			},
		]        
		},
		{
			'day' => 'Wednesday',
			'available_time' => [
			{
				'timeslot' => '9:00am - 10:00am',
				'available' => true
			},
			{
				'timeslot' => '10:00am - 11:00am',
				'available' => true
			},
			{
				'timeslot' => '12:00pm - 13:00pm',
				'available' => true
			},
			{
				'timeslot' => '14:00pm - 15:00m',
				'available' => true
			},
		]
		}
	], course_id: course_three.id
)

teacher_five3 = Teacher.create(
	name: "Botes", 
	image: "https://randomuser.me/api/portraits/men/12.jpg", 
  professional_summary: "I am backend engineer", 
	hourly_rating: 30,  
	available_days: [
		{
		'day' => 'Tuesday',
		'available_time' => [
			{
				'timeslot' => '9:00am - 10:00am',
				'available' => true
			},
			{
				'timeslot' => '10:00am - 11:00am',
				'available' => true
			},
			{
				'timeslot' => '12:00pm - 13:00pm',
				'available' => true
			},
			{
				'timeslot' => '14:00pm - 15:00m',
				'available' => true
			},
		]        
		},
		{
			'day' => 'Wednesday',
			'available_time' => [
			{
				'timeslot' => '9:00am - 10:00am',
				'available' => true
			},
			{
				'timeslot' => '10:00am - 11:00am',
				'available' => true
			},
			{
				'timeslot' => '12:00pm - 13:00pm',
				'available' => true
			},
			{
				'timeslot' => '14:00pm - 15:00m',
				'available' => true
			},
		]
		}
	], course_id: course_three.id
)

teacher_six3 = Teacher.create(
	name: "kennedy", 
	image: 'https://randomuser.me/api/portraits/men/12.jpg', 
  professional_summary: "I am backend engineer", 
	hourly_rating: 27,  
	available_days: [
		{
		'day' => 'Tuesday',
		'available_time' => [
			{
				'timeslot' => '9:00am - 10:00am',
				'available' => true
			},
			{
				'timeslot' => '10:00am - 11:00am',
				'available' => true
			},
			{
				'timeslot' => '12:00pm - 13:00pm',
				'available' => true
			},
			{
				'timeslot' => '14:00pm - 15:00m',
				'available' => true
			},
		]        
		},
		{
			'day' => 'Monday',
			'available_time' => [
			{
				'timeslot' => '9:00am - 10:00am',
				'available' => true
			},
			{
				'timeslot' => '10:00am - 11:00am',
				'available' => true
			},
			{
				'timeslot' => '12:00pm - 13:00pm',
				'available' => true
			},
			{
				'timeslot' => '14:00pm - 15:00m',
				'available' => true
			},
		]
		}
	], course_id: course_three.id
)

teacher_one4 = Teacher.create(
	name: "Shaddai", 
	image: '"https://randomuser.me/api/portraits/men/4.jpg"', 
  professional_summary: "I am a Teacher", 
	hourly_rating: 25,  
	available_days: [
		{
		'day' => 'monday',
		'available_time' => [
			{
				'timeslot' => '9:00am - 10:00am',
				'available' => true
			},
			{
				'timeslot' => '10:00am - 11:00am',
				'available' => true
			},
			{
				'timeslot' => '12:00pm - 13:00pm',
				'available' => true
			},
			{
				'timeslot' => '14:00pm - 15:00m',
				'available' => true
			},
		]        
		},
		{
			'day' => 'Wednesday',
			'available_time' => [
			{
				'timeslot' => '9:00am - 10:00am',
				'available' => true
			},
			{
				'timeslot' => '10:00am - 11:00am',
				'available' => true
			},
			{
				'timeslot' => '12:00pm - 13:00pm',
				'available' => true
			},
			{
				'timeslot' => '14:00pm - 15:00m',
				'available' => true
			},
		]
		}
	], course_id: course_four.id
)

teacher_two4 = Teacher.create(
	name: "keenan", 
	image: "https://randomuser.me/api/portraits/women/3.jpg", 
  professional_summary: "I am backend engineer", 
	hourly_rating: 25,  
	available_days: [
		{
		'day' => 'Tuesday',
		'available_time' => [
			{
				'timeslot' => '9:00am - 10:00am',
				'available' => true
			},
			{
				'timeslot' => '10:00am - 11:00am',
				'available' => true
			},
			{
				'timeslot' => '12:00pm - 13:00pm',
				'available' => true
			},
			{
				'timeslot' => '14:00pm - 15:00m',
				'available' => true
			},
		]        
		},
		{
			'day' => 'Wednesday',
			'available_time' => [
			{
				'timeslot' => '9:00am - 10:00am',
				'available' => true
			},
			{
				'timeslot' => '10:00am - 11:00am',
				'available' => true
			},
			{
				'timeslot' => '12:00pm - 13:00pm',
				'available' => true
			},
			{
				'timeslot' => '14:00pm - 15:00m',
				'available' => true
			},
		]
		}
	], course_id: course_four.id
)

teacher_three4 = Teacher.create(
	name: "Onomeh", 
	image: "https://randomuser.me/api/portraits/men/8.jpg", 
  professional_summary: "I am front-end engineer", 
	hourly_rating: 25,  
	available_days: [
		{
		'day' => 'Thursday',
		'available_time' => [
			{
				'timeslot' => '9:00am - 10:00am',
				'available' => true
			},
			{
				'timeslot' => '10:00am - 11:00am',
				'available' => true
			},
			{
				'timeslot' => '12:00pm - 13:00pm',
				'available' => true
			},
			{
				'timeslot' => '14:00pm - 15:00m',
				'available' => true
			},
		]        
		},
		{
			'day' => 'Wednesday',
			'available_time' => [
			{
				'timeslot' => '9:00am - 10:00am',
				'available' => true
			},
			{
				'timeslot' => '10:00am - 11:00am',
				'available' => true
			},
			{
				'timeslot' => '12:00pm - 13:00pm',
				'available' => true
			},
			{
				'timeslot' => '14:00pm - 15:00m',
				'available' => true
			},
		]
		}
	], course_id: course_four.id
)

teacher_four4 = Teacher.create(
	name: "Anko", 
	image: "https://randomuser.me/api/portraits/women/8.jpg", 
  professional_summary: "I am backend engineer", 
	hourly_rating: 25,  
	available_days: [
		{
		'day' => 'Sunday',
		'available_time' => [
			{
				'timeslot' => '9:00am - 10:00am',
				'available' => true
			},
			{
				'timeslot' => '10:00am - 11:00am',
				'available' => true
			},
			{
				'timeslot' => '12:00pm - 13:00pm',
				'available' => true
			},
			{
				'timeslot' => '14:00pm - 15:00m',
				'available' => true
			},
		]        
		},
		{
			'day' => 'Wednesday',
			'available_time' => [
			{
				'timeslot' => '9:00am - 10:00am',
				'available' => true
			},
			{
				'timeslot' => '10:00am - 11:00am',
				'available' => true
			},
			{
				'timeslot' => '12:00pm - 13:00pm',
				'available' => true
			},
			{
				'timeslot' => '14:00pm - 15:00m',
				'available' => true
			},
		]
		}
	], course_id: course_four.id
)

teacher_five4 = Teacher.create(
	name: "Botes", 
	image: "https://randomuser.me/api/portraits/men/12.jpg", 
  professional_summary: "I am backend engineer", 
	hourly_rating: 30,  
	available_days: [
		{
		'day' => 'Tuesday',
		'available_time' => [
			{
				'timeslot' => '9:00am - 10:00am',
				'available' => true
			},
			{
				'timeslot' => '10:00am - 11:00am',
				'available' => true
			},
			{
				'timeslot' => '12:00pm - 13:00pm',
				'available' => true
			},
			{
				'timeslot' => '14:00pm - 15:00m',
				'available' => true
			},
		]        
		},
		{
			'day' => 'Wednesday',
			'available_time' => [
			{
				'timeslot' => '9:00am - 10:00am',
				'available' => true
			},
			{
				'timeslot' => '10:00am - 11:00am',
				'available' => true
			},
			{
				'timeslot' => '12:00pm - 13:00pm',
				'available' => true
			},
			{
				'timeslot' => '14:00pm - 15:00m',
				'available' => true
			},
		]
		}
	], course_id: course_four.id
)

teacher_six4 = Teacher.create(
	name: "kennedy", 
	image: 'https://randomuser.me/api/portraits/men/12.jpg', 
  professional_summary: "I am backend engineer", 
	hourly_rating: 27,  
	available_days: [
		{
		'day' => 'Tuesday',
		'available_time' => [
			{
				'timeslot' => '9:00am - 10:00am',
				'available' => true
			},
			{
				'timeslot' => '10:00am - 11:00am',
				'available' => true
			},
			{
				'timeslot' => '12:00pm - 13:00pm',
				'available' => true
			},
			{
				'timeslot' => '14:00pm - 15:00m',
				'available' => true
			},
		]        
		},
		{
			'day' => 'Monday',
			'available_time' => [
			{
				'timeslot' => '9:00am - 10:00am',
				'available' => true
			},
			{
				'timeslot' => '10:00am - 11:00am',
				'available' => true
			},
			{
				'timeslot' => '12:00pm - 13:00pm',
				'available' => true
			},
			{
				'timeslot' => '14:00pm - 15:00m',
				'available' => true
			},
		]
		}
	], course_id: course_four.id
)


teacher_one5 = Teacher.create(
	name: "Shaddai", 
	image: '"https://randomuser.me/api/portraits/men/4.jpg"', 
  professional_summary: "I am a Teacher", 
	hourly_rating: 25,  
	available_days: [
		{
		'day' => 'monday',
		'available_time' => [
			{
				'timeslot' => '9:00am - 10:00am',
				'available' => true
			},
			{
				'timeslot' => '10:00am - 11:00am',
				'available' => true
			},
			{
				'timeslot' => '12:00pm - 13:00pm',
				'available' => true
			},
			{
				'timeslot' => '14:00pm - 15:00m',
				'available' => true
			},
		]        
		},
		{
			'day' => 'Wednesday',
			'available_time' => [
			{
				'timeslot' => '9:00am - 10:00am',
				'available' => true
			},
			{
				'timeslot' => '10:00am - 11:00am',
				'available' => true
			},
			{
				'timeslot' => '12:00pm - 13:00pm',
				'available' => true
			},
			{
				'timeslot' => '14:00pm - 15:00m',
				'available' => true
			},
		]
		}
	], course_id: course_five.id
)

teacher_two5 = Teacher.create(
	name: "keenan", 
	image: "https://randomuser.me/api/portraits/women/3.jpg", 
  professional_summary: "I am backend engineer", 
	hourly_rating: 25,  
	available_days: [
		{
		'day' => 'Tuesday',
		'available_time' => [
			{
				'timeslot' => '9:00am - 10:00am',
				'available' => true
			},
			{
				'timeslot' => '10:00am - 11:00am',
				'available' => true
			},
			{
				'timeslot' => '12:00pm - 13:00pm',
				'available' => true
			},
			{
				'timeslot' => '14:00pm - 15:00m',
				'available' => true
			},
		]        
		},
		{
			'day' => 'Wednesday',
			'available_time' => [
			{
				'timeslot' => '9:00am - 10:00am',
				'available' => true
			},
			{
				'timeslot' => '10:00am - 11:00am',
				'available' => true
			},
			{
				'timeslot' => '12:00pm - 13:00pm',
				'available' => true
			},
			{
				'timeslot' => '14:00pm - 15:00m',
				'available' => true
			},
		]
		}
	], course_id: course_five.id
)

teacher_three5 = Teacher.create(
	name: "Onomeh", 
	image: "https://randomuser.me/api/portraits/men/8.jpg", 
  professional_summary: "I am front-end engineer", 
	hourly_rating: 25,  
	available_days: [
		{
		'day' => 'Thursday',
		'available_time' => [
			{
				'timeslot' => '9:00am - 10:00am',
				'available' => true
			},
			{
				'timeslot' => '10:00am - 11:00am',
				'available' => true
			},
			{
				'timeslot' => '12:00pm - 13:00pm',
				'available' => true
			},
			{
				'timeslot' => '14:00pm - 15:00m',
				'available' => true
			},
		]        
		},
		{
			'day' => 'Wednesday',
			'available_time' => [
			{
				'timeslot' => '9:00am - 10:00am',
				'available' => true
			},
			{
				'timeslot' => '10:00am - 11:00am',
				'available' => true
			},
			{
				'timeslot' => '12:00pm - 13:00pm',
				'available' => true
			},
			{
				'timeslot' => '14:00pm - 15:00m',
				'available' => true
			},
		]
		}
	], course_id: course_five.id
)

teacher_four5 = Teacher.create(
	name: "Anko", 
	image: "https://randomuser.me/api/portraits/women/8.jpg", 
  professional_summary: "I am backend engineer", 
	hourly_rating: 25,  
	available_days: [
		{
		'day' => 'Sunday',
		'available_time' => [
			{
				'timeslot' => '9:00am - 10:00am',
				'available' => true
			},
			{
				'timeslot' => '10:00am - 11:00am',
				'available' => true
			},
			{
				'timeslot' => '12:00pm - 13:00pm',
				'available' => true
			},
			{
				'timeslot' => '14:00pm - 15:00m',
				'available' => true
			},
		]        
		},
		{
			'day' => 'Wednesday',
			'available_time' => [
			{
				'timeslot' => '9:00am - 10:00am',
				'available' => true
			},
			{
				'timeslot' => '10:00am - 11:00am',
				'available' => true
			},
			{
				'timeslot' => '12:00pm - 13:00pm',
				'available' => true
			},
			{
				'timeslot' => '14:00pm - 15:00m',
				'available' => true
			},
		]
		}
	], course_id: course_five.id
)

teacher_five5 = Teacher.create(
	name: "Botes", 
	image: "https://randomuser.me/api/portraits/men/12.jpg", 
  professional_summary: "I am backend engineer", 
	hourly_rating: 30,  
	available_days: [
		{
		'day' => 'Tuesday',
		'available_time' => [
			{
				'timeslot' => '9:00am - 10:00am',
				'available' => true
			},
			{
				'timeslot' => '10:00am - 11:00am',
				'available' => true
			},
			{
				'timeslot' => '12:00pm - 13:00pm',
				'available' => true
			},
			{
				'timeslot' => '14:00pm - 15:00m',
				'available' => true
			},
		]        
		},
		{
			'day' => 'Wednesday',
			'available_time' => [
			{
				'timeslot' => '9:00am - 10:00am',
				'available' => true
			},
			{
				'timeslot' => '10:00am - 11:00am',
				'available' => true
			},
			{
				'timeslot' => '12:00pm - 13:00pm',
				'available' => true
			},
			{
				'timeslot' => '14:00pm - 15:00m',
				'available' => true
			},
		]
		}
	], course_id: course_five.id
)

teacher_six5 = Teacher.create(
	name: "kennedy", 
	image: 'https://randomuser.me/api/portraits/men/12.jpg', 
  professional_summary: "I am backend engineer", 
	hourly_rating: 27,  
	available_days: [
		{
		'day' => 'Tuesday',
		'available_time' => [
			{
				'timeslot' => '9:00am - 10:00am',
				'available' => true
			},
			{
				'timeslot' => '10:00am - 11:00am',
				'available' => true
			},
			{
				'timeslot' => '12:00pm - 13:00pm',
				'available' => true
			},
			{
				'timeslot' => '14:00pm - 15:00m',
				'available' => true
			},
		]        
		},
		{
			'day' => 'Monday',
			'available_time' => [
			{
				'timeslot' => '9:00am - 10:00am',
				'available' => true
			},
			{
				'timeslot' => '10:00am - 11:00am',
				'available' => true
			},
			{
				'timeslot' => '12:00pm - 13:00pm',
				'available' => true
			},
			{
				'timeslot' => '14:00pm - 15:00m',
				'available' => true
			},
		]
		}
	], course_id: course_five.id)   