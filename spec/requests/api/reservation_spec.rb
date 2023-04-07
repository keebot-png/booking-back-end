require 'swagger_helper'

RSpec.describe 'api/v1/courses/{id}/reservations' do
  path "/api/v1/courses/{id}/reservations" do
    get 'Get all reservations' do
      tags 'Reservation'
      consumes 'application/json'
      response '200', 'reservation found' do
        schema type: :array,
          properties: {
            id: { type: :integer },
            start_time: { type: :time },
            end_time: { type: :time },
            course_id: { type: :integer },
            teacher_id: { type: :integer },
            user_id: { type: :integer }
          },
          required: %w[id start_time end_time course_id teacher_id user_id]
          run_test!
      end
    end
  end
  
  path '/api/v1/courses/{id}/reservations/' do
    post 'Creates Reservation' do
      tags 'Teacher'
      consumes 'application/json'
      parameter name: :reservation, in: :body, schema: {
        type: :object,
        properties: {
          id: { type: :integer },
          start_time: { type: :time },
          end_time: { type: :time },
          course_id: { type: :integer },
          teacher_id: { type: :integer },
          user_id: { type: :integer }
        },
        required: %w[id start_time end_time course_id teacher_id user_id]
      }
      response '201', 'Reservation created successfully' do
        let(:reservation) do
          { 
            start_time: Time.new(Time.now.year, Time.now.month, Time.now.day, 9, 0, 0, Time.now.utc_offset) , 
            end_time: Time.new(Time.now.year, Time.now.month, Time.now.day, 10, 0, 0, Time.now.utc_offset), 
            course_id: 1, teacher_id: 1,
            user_id: 1
          }
        end
        run_test!
      end

      response '422', 'invalid request' do
        let(:course) { { user_id: '', teacher_id: 'hello' } }
        run_test!
      end
    end
  end

  path '/api/v1/courses/{id}/reservations/{id}' do
    delete 'Cancel reservation' do
      tags 'Reservation'
      produces 'application/json'
      response '200', 'reservation cancelled successfully' do
        let(:id) {
          Reservation.create(
            start_time: Time.new(Time.now.year, Time.now.month, Time.now.day, 9, 0, 0, Time.now.utc_offset) , 
            end_time: Time.new(Time.now.year, Time.now.month, Time.now.day, 10, 0, 0, Time.now.utc_offset), 
            course_id: 1, teacher_id: 1,
            user_id: 1
          ).id
        }
        run_test!
      end

      response '404', 'reservation not found' do
        let(:id) { 'invalid' }
        run_test!
      end
    end
  end
end
