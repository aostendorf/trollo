require 'rails_helper'

it 'this is my list' do
  expect(FactoryBot.create(:list).name).to eq('MyList')
  expect(FactoryBot.create(:list).priority).to eq('1')
end

it 'this is my list1' do
  expect(FactoryBot.create(:list).name).to eq('MyList1')
  expect(FactoryBot.create(:list).priority).to eq('2')
end