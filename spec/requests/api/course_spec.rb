require 'swagger_helper'

describe 'Courses API' do
  # rubocop:disable Metrics/BlockLength
  path '/api/v1/courses' do
    get 'Retrieves all courses' do
      tags 'Courses'
      produces 'application/json'
      response '200', 'courses found' do
        schema type: :array,
               properties: {
                 id: { type: :integer },
                 title: { type: :string },
                 description: { type: :string },
                 course_outline: { type: :string },
                 image: { type: :string },
                 user_id: { type: :integer },
                 enrolled_students: { type: :integer }
               },
               required: %w[id title description course_outline image user_id enrolled_students]
        run_test!
      end
    end
  end
  path '/api/v1/courses/{id}' do
    # rubocop:enable Metrics/BlockLength
    parameter name: 'id', in: :path, type: :integer
    get 'Retrieves a course' do
      tags 'Course'
      produces 'application/json'
      response '200', 'course found' do
        schema type: :object,
               properties: {
                 id: { type: :integer },
                 title: { type: :string },
                 description: { type: :string },
                 course_outline: { type: :string },
                 image: { type: :string },
                 user_id: { type: :integer },
                 enrolled_students: { type: :integer }
               },
               required: %w[id title description course_outline image user_id enrolled_students]
        let(:id) do
          Course.create(
            title: 'maths',
            description: 'amazing',
            course_outline: 'calculus, algebra',
            image: 'http://school.com/math.jpg',
            user_id: 1,
            enrolled_students: 4
          ).id
        end
        run_test!
      end

      response '404', 'course not found' do
        let(:id) { 'invalid' }
        run_test!
      end
    end
  end
end
