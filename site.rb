require 'bundler/setup'

Bundler.require(:default)

get '/' do
  erb :home
end
