#!/usr/bin/env ruby
require 'sinatra'

get '/' do
  "Hello default"
end

get '/hello/:name' do
  "Hello #{params[:name]}!"
end