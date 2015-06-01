require('rspec')
require('parcel')

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
      test_parcel = Parcel.new(3,6,2,10)
      test_parcel.save()
      expect(Parcel.all()).to(eq([test_parcel]))
    end
  end
  describe('.clear') do
    it('empties out all of the saved parcels') do
      Parcel.new(3,6,2,10).save()
      Parcel.clear()
      expect(Parcel.all()).to(eq([]))
    end
  end
    describe('#volume') do
      it('calculates the volume of a parcel') do
        test_parcel = Parcel.new(3,6,2,10)
        expect(test_parcel.volume()).to(eq(36))
      end
    end
 end
