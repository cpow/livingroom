module AsyncSupport
  def eventually
    timeout = 10
    polling_interval = 0.1
    time_limit = Time.now + timeout
    loop do
      begin
        yield
      rescue Exception => error
      end
      return if error.nil?
      raise error if Time.now >= time_limit
      sleep polling_interval
    end
  end
end

RSpec.configure do |config|
  config.include AsyncSupport, :type => :request
end