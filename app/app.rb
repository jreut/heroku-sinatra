require 'sinatra/base'

# nodoc
class App < Sinatra::Base
  get '/' do
    'Hello, world!'
  end
end
