require 'rails_helper'

RSpec.describe Kitten do
  it 'exists' do
    expect(Kitten.new).to be_a Kitten
  end

  describe '#age' do
    it 'returns zero for born yesterday' do
      k = FactoryGirl.create(:kitten, date_of_birth: Date.yesterday)
      expect(k.age).to eq(0)
    end
  end
end