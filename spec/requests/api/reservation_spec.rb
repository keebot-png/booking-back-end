require 'swagger_helper'
# rubocop:disable Metrics/BlockLength
RSpec.describe 'api/v1/courses/{id}/reservations' do
  path '/api/v1/courses/{id}/reservations' do
    get 'Get all reservations' do
      tags 'Reservation'
      consumes 'application/json'
      response '200', 'reservation found' do
        schema type: :array,
               properties: {
                 id: { type: :integer },
                 course_name: { type: :string },
                 teacher_name: { type: :string },
                 day: { type: :string },
                 times: { type: :text },
                 course_id: { type: :integer },
                 user_id: { type: :integer }
               },
               required: %w[id course_name teacher_name day times course_id user_id]
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
          course_name: { type: :string },
          teacher_name: { type: :string },
          day: { type: :string },
          times: { type: :text },
          course_id: { type: :integer },
          user_id: { type: :integer }
        },
        required: %w[id course_name teacher_name day times course_id user_id]
      }
      response '201', 'Reservation created successfully' do
        let(:reservation) do
          {
            course_id: 1,
            user_id: 1, course_name: 'Maths',
            teacher_name: 'Amore', day: 'Monday',
            times: ['10:00 - 12:00', '12:00 - 13:00']
          }
        end
        run_test!
      end

      response '422', 'invalid request' do
        let(:course) { { user_id: '' } }
        run_test!
      end
    end
  end

  path '/api/v1/courses/{id}/reservations/{id}' do
    delete 'Cancel reservation' do
      tags 'Reservation'
      produces 'application/json'
      response '200', 'reservation cancelled successfully' do
        let(:id) do
          Reservation.create(
            course_id: 1,
            user_id: 1, course_name: 'Maths',
            teacher_name: 'Amore', day: 'Monday',
            times: ['10:00 - 12:00', '12:00 - 13:00']
          ).id
        end
        run_test!
      end

      response '404', 'reservation not found' do
        let(:id) { 'invalid' }
        run_test!
      end
    end
  end
end
# rubocop:enable Metrics/BlockLength
