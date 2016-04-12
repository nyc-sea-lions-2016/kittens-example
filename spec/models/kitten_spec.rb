require 'rails_helper'

RSpec.describe Kitten do
  it 'exists' do
    expect(Kitten.new).to be_a Kitten
  end

  describe '#age' do
    it 'returns zero for born yesterday' do
      k = Kitten.create!(name: 'steven', date_of_birth: Date.yesterday)
      expect(k.age).to eq(1)
    end
  end
end