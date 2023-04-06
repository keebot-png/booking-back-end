require 'swagger_helper'

describe 'Courses API' do
  path '/api/v1/courses' do
    post 'Creates a course' do
      tags 'Courses'
      consumes 'application/json'
      parameter name: :course, in: :body, schema: {
        type: :object,
        properties: {
          id: { type: :integer },
          title: { type: :string },
          description: { type: :string },
          course_outline: { type: :string },
          image: { type: :string },
          available: { type: :boolean }
        },
        require: ['id', 'title', 'description', 'course_outline', 'image', 'available']
      }
      response '201', 'course created successfully' do
        let(:course) { { title: 'Hello', description: 'This is my first', image: 'http/img.png', course_outline: 'this course', available: true }}
        run_test!
      end

      response '422', 'invalid request' do
        let(:course) { { title: '', description: '' } }
        run_test!
      end
    end

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
          available: { type: :boolean }
        },
        required: %w[id title description course_outline image available]
        run_test!
      end
    end
  end

  path '/api/v1/courses/{id}' do
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
          available: { type: :boolean }
        },
        required: %w[id title description course_outline image available]
        let(:id) { Course.create(title: 'maths', description: 'amazing', course_outline: 'calculus, algebra', image: 'http://school.com/math.jpg', available: true).id }
        run_test!
      end

      response '404', 'course not found' do
        let(:id) { 'invalid' }
        run_test!
      end
    end

    delete 'Delete a course' do
      tags 'Course'
      produces 'application/json'
      response '200', 'course deleted successfully' do
        let(:id) { Course.create(title: 'maths', description: 'amazing', course_outline: 'calculus, algebra', image: 'http://school.com/math.jpg', available: true).id }
        run_test!
      end

      response '404', 'course not found' do
        let(:id) { 'invalid' }
        run_test!
      end
    end
  end
end
