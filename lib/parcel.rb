class Parcel

@@all_parcels = []

  define_method(:initialize) do |weight, height, width|
    @weight = weight
    @height = height
    @width = width
  end

  define_method(:weight) do
    @weight
  end

  define_method(:height) do
    @height
  end

  define_method(:weight) do
    @width
  end

  define_singleton_method(:all) do
    @@all_parcels
  end
  define_method(:save) do
    @@all_parcels.push(self)
  end
end
