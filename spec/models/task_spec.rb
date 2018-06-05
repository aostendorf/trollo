require 'rails_helper'

describe Task do
  it 'has a item' do
  expect(FactoryBot.create(:task).item).to eq('MyTask')
  end

  it 'has completed value' do
  expect(FactoryBot.create(:task).completed).to eq('false')
  end
end

