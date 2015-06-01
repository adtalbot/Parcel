require('sinatra')
require('sinatra/reloader')
also_reload('lib/**/*.rb')
require('./lib/parcel')

get('/') do
  erb(:index)
end

get('/results') do
  @length = params.fetch('length').to_i
  @width = params.fetch('width').to_i
  @height = params.fetch('height').to_i
  @weight = params.fetch('weight').to_i
  @distance = params.fetch('distance').to_i
  @speed = params.fetch('speed').to_i
  parcel= Parcel.new(@length, @width, @height, @weight, @distance, @speed)
  @cost = parcel.cost_to_ship
    erb(:results)
  end
