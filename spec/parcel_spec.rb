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
      test_parcel = Parcel.new(3,6,2,10,1,'Expedited')
      test_parcel.save()
      expect(Parcel.all()).to(eq([test_parcel]))
    end
  end
  describe('.clear') do
    it('empties out all of the saved parcels') do
      Parcel.new(3,6,2,10,1,'Expedited').save()
      Parcel.clear()
      expect(Parcel.all()).to(eq([]))
    end
  end
    describe('#volume') do
      it('calculates the volume of a parcel') do
        test_parcel = Parcel.new(3,6,2,10,1,'Expedited')
        expect(test_parcel.volume()).to(eq(36))
      end
    end


  describe('#weight_calculation') do
    it('calculates cost per pound') do
      test_parcel = Parcel.new(3,6,2,1,1,'Expedited')
      expect(test_parcel.weight_calculation()).to(eq(1))
    end
  end
  describe('#cost_to_ship') do
    it('determine the shipping cost') do
      test_parcel = Parcel.new(3,6,2,5,1,'Expedited')
      expect(test_parcel.cost_to_ship()).to(eq(15))
    end
  end
end
