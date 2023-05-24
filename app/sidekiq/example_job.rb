# frozen_string_literal: true

class ExampleJob
  include Sidekiq::Job

  def perform(*args)
    # Do something
  end
end
