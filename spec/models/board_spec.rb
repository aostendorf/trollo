require 'rails_helper'

it 'this is my board' do
  expect(FactoryBot.create(:board).name).to eq('MyBoard')
end


