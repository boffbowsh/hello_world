require 'rubygems'
require 'rack'

class HelloWorld
  def call(env)
    [200, {"Content-Type" => "text/html"}, ["Hello #{ENV['NAME'] || 'Rack'}!"]]
  end
end

run HelloWorld.new
