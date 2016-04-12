require 'rails_helper'

RSpec.describe User do
  it {is_expected.to validate_presence_of :username}
  it {is_expected.to validate_presence_of :email}
  it {is_expected.to validate_uniqueness_of :email}

  it 'responds to email' do
    u = User.new
    expect(u).to respond_to(:email)
  end

end