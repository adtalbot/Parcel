class Parcel

attr_reader(:height, :width, :length, :weight, :distance, :speed)

@@all_parcels = []

  define_method(:initialize) do |height, width, length, weight, distance, speed|
    @height = height
    @width = width
    @length = length
    @weight = weight

    if distance > 0 && (distance < 100)
      @distance = 1
    elsif distance >= 100 && (distance < 500)
      @distance = 2
    else distance >= 500 && (distance < 1000)
      @distance = 3
    
    end

    if speed.==('expedited')
      @speed = 3
    elsif speed.==('two_day')
      @speed = 2
    else speed.==('ground')
      @speed = 1
    end
  end

  define_singleton_method(:all) do
    @@all_parcels
  end

  define_method(:save) do
    @@all_parcels.push(self)
  end

  define_singleton_method(:clear) do
    @@all_parcels = []
  end

  define_method(:volume) do
    @volume = (@width * @height * @length)
  end

  define_method(:weight_calculation) do
    @weight = weight.*(1)
  end

  define_method(:cost_to_ship) do
    @cost_to_ship = (@distance.* @weight.* @speed)
  end
end
