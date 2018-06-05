require 'rails_helper'

describe Board do
it 'has a title' do
  expect(FactoryBot.create(:board).title).to eq("MyBoard")
end
end

