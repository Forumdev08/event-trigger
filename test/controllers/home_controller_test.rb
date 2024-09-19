require 'test_helper'

class HomeControllerTest < ActionDispatch::IntegrationTest
  test "should create event A" do
    # Mock the API request
    stub_request(:post, "https://api.iterable.com/api/events/track")
      .to_return(status: 200, body: { "mock" => "Event A created" }.to_json)

    post create_event_a_path
    assert_response :redirect
    follow_redirect!
    assert_select 'p', 'Event A Created'
  end

  test "should create event B and send email" do
    # Mock the API request for creating Event B
    stub_request(:post, "https://api.iterable.com/api/events/track")
      .to_return(status: 200, body: { "mock" => "Event B created" }.to_json)

    # Mock the API request for sending email
    stub_request(:post, "https://api.iterable.com/api/email/target")
      .to_return(status: 200, body: { "mock" => "Email sent" }.to_json)

    post create_event_b_path
    assert_response :redirect
    follow_redirect!
    assert_select 'p', 'Event B Created and Email Sent'
  end
end
