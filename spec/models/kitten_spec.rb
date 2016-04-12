require 'rails_helper'

RSpec.describe Kitten do
  it 'exists' do
    expect(Kitten.new).to be_a Kitten
  end
end