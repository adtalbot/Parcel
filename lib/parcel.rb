class Parcel

@@all_parcels = []

  define_method(:initialize) do |height, width, length, weight, distance|
    @weight = weight
    @height = height
    @width = width
    @length = length
    @distance = distance
  end

  define_method(:weight) do
    @weight
  end

  define_method(:height) do
    @height
  end

  define_method(:width) do
    @width
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

  define_method(:speed) do
    speed = {'expedited' => 3, 'two_day' => 2, 'ground' => 1}
  end

  define_method(:distance_calculation) do
    if @distance > 0 && (@distance < 100)
      @distance_value = 1
    elsif @distance > 100 && (@distance < 500)
      @distance_value = 2
    elsif @distance > 500 && (@distance < 1000)
      @distance_value = 3
    else
      'we do not ship that far'
    end
    @distance_value
  end
end
