require('rspec')
require('parcel')
require('pry')

describe(Parcel) do
  before() do
    Parcel.clear()
  end
  describe('.all') do
    it('is empty at first') do
      expect(Parcel.all()).to(eq([]))
    end
  end
  describe('#save') do
    it('adds a property of the parcel and saves it') do
      test_parcel = Parcel.new(3,6,2,10,100)
      test_parcel.save()
      expect(Parcel.all()).to(eq([test_parcel]))
    end
  end
  describe('.clear') do
    it('empties out all of the saved parcels') do
      Parcel.new(3,6,2,10,100).save()
      Parcel.clear()
      expect(Parcel.all()).to(eq([]))
    end
  end
    describe('#volume') do
      it('calculates the volume of a parcel') do
        test_parcel = Parcel.new(3,6,2,10,100)
        expect(test_parcel.volume()).to(eq(36))
      end
    end
    describe('#speed') do
      it('determines how quickly a package will ship') do
        test_parcel = Parcel.new(3,6,2,1,100)
        expect(test_parcel.speed().fetch('expedited')).to(eq(3))
    end
  end
    describe('#distance_calculation') do
      it('calculates cost of shipping by distance') do
        test_parcel = Parcel.new(3,6,2,1,99)
        expect(test_parcel.distance_calculation()).to(eq(1))
    end
  end
end
