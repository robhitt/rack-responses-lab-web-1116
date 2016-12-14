# If it's before noon, greet the user with "Good Morning!"
# If it's after noon, greet the user with "Good Afternoon!". Remember that getting the time may return results in 24 hour time! Anytime after 12 is the afternoon.

class Application
  def call(env)
    resp = Rack::Response.new

    current_time = Time.now
    hour = current_time.hour
    minute = current_time.min
    seconds = current_time.sec

    if hour < 12
      resp.write "Good Morning Mr. Hitt"
    else
      resp.write "Good Afternoon Mr. Hitt"
    end
    resp.finish
  end
end
