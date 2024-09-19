class HomeController < ApplicationController
  def index
  end

  def create_event_a
    # Assume user ID is static for now, replace with actual user management later
    user_id = 'user123'
    event_name = 'Event A'

    # Call the mocked API service
    response = IterableService.new.create_event(user_id, event_name)

    # Flash message to show the event creation status
    if response[:status] == 200
      redirect_to root_path, notice: 'Event A Created'
    else
      redirect_to root_path, alert: 'Failed to create Event A'
    end
  end

  def create_event_b
    user_id = 'user123'
    event_name = 'Event B'

    # Call the mocked API service for creating the event
    response = IterableService.new.create_event(user_id, event_name)

    if response[:status] == 200
      # If event B is created, send an email
      email_response = IterableService.new.send_email_for_event_b(user_id)

      if email_response[:status] == 200
        redirect_to root_path, notice: 'Event B Created and Email Sent'
      else
        redirect_to root_path, alert: 'Event B Created but Email Failed'
      end
    else
      redirect_to root_path, alert: 'Failed to create Event B'
    end
  end
end
