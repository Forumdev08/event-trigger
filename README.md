Project Name: Event Trigger and Email Notification System
Description

This is a simple Ruby on Rails web application that integrates with the Iterable.com API. The application allows users to create two types of events (Event A and Event B). For every instance of Event B, an email notification is sent to the user via the Iterable API. The application also supports user management and authentication (optional bonus feature).
Features

  UI with Two Buttons:
      "Create Event A" button to create Event A for a user in Iterable.
      "Create Event B" button to create Event B for a user in Iterable.
  Iterable API Integration:
      Creates events and sends emails for Event B using the Iterable API.
  Mocking Iterable API for Testing:
      Uses over-the-wire mocks to simulate API interactions.
  User Management (Bonus):
      Multiple users can be associated with events.
      Authentication implemented using Devise.

Prerequisites

  Ruby
  Rails 
  Bundler (gem install bundler)
  Database setup
  Iterable API Documentation

Installation Instructions
git clone https://github.com/your-repository-url.git
cd event-trigger-system
bundle install
rails db:setup
rails server


Tests
rails db:test:prepare
rails tests
