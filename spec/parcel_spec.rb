require('rspec')
require('parcel')


describe(Parcel) do
  describe('.all') do
    it('is empty at first') do
      expect(Parcel.all()).to(eq([]))
    end
  end
  describe('#save') do
    it('adds a property of the parcel and saves it') do
      test_parcel = Parcel.new(3,6,2)
      test_parcel.save()
      expect(Parcel.all()).to(eq([test_parcel]))
    end
  end
end
