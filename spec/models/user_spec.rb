require 'rails_helper'

RSpec.describe User, type: :model do
    before(:each) do
      @user = User.create(name: 'Thomas')
    end
  
    describe 'should have valid inputs' do
        it 'name should be present' do 
          @user.name = nil
          expect(@user).to_not be_valid
        end
    end 
end