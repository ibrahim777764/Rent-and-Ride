require 'rails_helper'

RSpec.describe Car, type: :model do
  before(:each) do
    @car = Car.create(
      user: @user,
      name: 'vox wagen',
      image: 'https://google.com/cars',
      description: 'This is a brand new v6 vox wagen with great speed',
      price: 100.0,
      location: 'kigali',
      duration: 2,
      rented: false
    )
  end

  context 'invalid inputs' do
    it 'is inavlid when name is blank' do
      @car.name = ''
      expect(@car).to_not be_valid
    end

    it 'is inavlid when image is blank' do
      @car.image = ''
      expect(@car).to_not be_valid
    end

    it 'is invalid when :description length > 350' do
      @car.description = 'g' * 351
      expect(@car).to_not be_valid
    end

    it 'is invalid when :location length > 250' do
      @car.location = 'k' * 251
      expect(@car).to_not be_valid
    end

    it 'price should be greater than or equal to zero' do
      @car.price = 0
      expect(@car).to_not be_valid
    end

    it 'duration should be greater than or equal to zero' do
      @car.duration = 0
      expect(@car).to_not be_valid
    end
  end
end
