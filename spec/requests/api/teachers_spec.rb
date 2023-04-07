require 'swagger_helper'

# rubocop:disable Metrics/BlockLength
RSpec.describe 'api/teachers' do
  path '/api/v1/courses/{id}/teachers' do
    get 'Get all teachers' do
      tags 'Teachers'
      consumes 'application/json'
      response '200', 'courses found' do
        schema type: :array,
               properties: {
                 id: { type: :integer },
                 name: { type: :string },
                 image: { type: :string },
                 years_of_experience: { type: :integer },
                 professional_summary: { type: :string },
                 hourly_rating: { type: :float },
                 start_time: { type: :time },
                 end_time: { type: :time },
                 course_id: { type: :integer }
               },
               required: %w[id name image years_of_experience professional_summary hourly_rating start_time end_time
                            course_id]
        run_test!
      end
    end
  end

  path '/api/v1/courses/{id}/teachers/' do
    post 'Creates a teacher' do
      tags 'Teacher'
      consumes 'application/json'
      parameter name: :teacher, in: :body, schema: {
        type: :object,
        properties: {
          id: { type: :integer },
          name: { type: :string },
          image: { type: :string },
          years_of_experience: { type: :integer },
          professional_summary: { type: :string },
          hourly_rating: { type: :float },
          start_time: { type: :time },
          end_time: { type: :time },
          course_id: { type: :integer }
        },
        required: %w[id name image years_of_experience professional_summary hourly_rating start_time end_time course_id]
      }
      response '201', 'Teacher created successfully' do
        let(:teacher) do
          {
            name: 'Amos', image: 'http/img.png',
            years_of_experience: 10, professional_summary: 'PHD in maths',
            hourly_rating: 50.50,
            start_time: Time.new(Time.now.year, Time.now.month, Time.now.day, 9, 0, 0, Time.now.utc_offset),
            end_time: Time.new(Time.now.year, Time.now.month, Time.now.day, 10, 0, 0, Time.now.utc_offset),
            course_id: 1
          }
        end
        run_test!
      end

      response '422', 'invalid request' do
        let(:course) { { name: '', years_of_experience: 'hello' } }
        run_test!
      end
    end
  end

  path '/api/v1/courses/{id}/teachers/{id}' do
    parameter name: 'id', in: :path, type: :integer
    get 'Retrieves a teacher' do
      tags 'Teacher'
      produces 'application/json'
      response '200', 'teacher found' do
        schema type: :object,
               properties: {
                 id: { type: :integer },
                 name: { type: :string },
                 image: { type: :string },
                 years_of_experience: { type: :integer },
                 professional_summary: { type: :string },
                 hourly_rating: { type: :float },
                 start_time: { type: :time },
                 end_time: { type: :time },
                 course_id: { type: :integer }
               },
               required: %w[id name image years_of_experience professional_summary hourly_rating start_time
                            end_time course_id]
        let(:id) do
          Teacher.create(
            name: 'Amos', image: 'http://school.com/math.jpg',
            years_of_experience: 10,
            professional_summary: 'A PHD in maths',
            hourly_rating: 50.30,
            start_time: Time.new(Time.now.year, Time.now.month, Time.now.day, 9, 0, 0, Time.now.utc_offset),
            end_time: Time.new(Time.now.year, Time.now.month, Time.now.day, 10, 0, 0, Time.now.utc_offset),
            course_id: 1
          ).id
        end
        run_test!
      end

      response '404', 'teacher not found' do
        let(:id) { 'invalid' }
        run_test!
      end
    end
  end
end
# rubocop:enable Metrics/BlockLength
