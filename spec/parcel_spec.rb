require('rspec')
require('parcel')


describe(Parcel) do
  describe('.all') do
    it('is empty at first') do
      expect(Parcel.all()).to(eq([]))
    end
  end
end
