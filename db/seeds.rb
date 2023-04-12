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

teacher_one = Teacher.create(name: "Shaddai", image: 'https://cdn.fs.teachablecdn.com/6oadsMCBQ82r522pzJkz', years_of_experience: 5, professional_summary: "I am a Teacher", hourly_rating: 25,  available_times: [
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
], course_id: course_one.id)