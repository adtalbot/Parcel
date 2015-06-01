require('sinatra')
require('sinatra/reloader')
also_reload('lib/**/*.rb')
require('./lib/parcel')

get('/') do
  erb(:index)
end

get('/results') do
  @length = params.fetch('length')
  @width = params.fetch('width')
  @height = params.fetch('height')
  @weight = params.fetch('weight')
  @distance = params.fetch('distance')
  @speed = params.fetch('speed')
  parcel= Parcel.new(@length, @width, @height, @weight, @distance, @speed)
  @cost = parcel.cost_of_shipping
    erb(:results)
  end
