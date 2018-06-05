require 'rails_helper'

describe List do
  it 'has a title' do
    expect(FactoryBot.create(:list).title).to eq('MyList')
  end

  it 'has a priority' do
    expect(FactoryBot.create(:list).priority).to eq('1')
  end
end