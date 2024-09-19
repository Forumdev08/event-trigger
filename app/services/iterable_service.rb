class IterableService
  include HTTParty
  base_uri 'https://api.iterable.com/api'

  def create_event(user_id, event_name)
    # API interaction mocked in tests
    response = {
      status: 200,
      message: "Mock event #{event_name} created for user #{user_id}"
    }
    response
  end

  def send_email_for_event_b(user_id)
    # API interaction mocked in tests
    response = {
      status: 200,
      message: "Mock email sent to #{user_id} for Event B"
    }
    response
  end
end
