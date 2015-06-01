class Parcel

@@all_parcels = []

  define_method(:initialize) do |height, width, length, weight|
    @weight = weight
    @height = height
    @width = width
    @length = length
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
    @volume = (@width *@height *@length)
  end
end
