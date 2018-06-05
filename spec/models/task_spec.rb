require 'rails_helper'

it 'this is my task' do
  expect(FactoryBot.create(:task).item).to eq('MyTask')
  expect(FactoryBot.create(:task).completed).to eq('false')
end

it 'this is my task1' do
  expect(FactoryBot.create(:task).item).to eq('MyTask1')
  expect(FactoryBot.create(:task).completed).to eq('true')
end

