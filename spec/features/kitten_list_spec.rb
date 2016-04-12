require 'rails_helper'

RSpec.describe 'Kittens index page' do


  it 'shows a list of kittens' do
    3.times { FactoryGirl.create(:kitten) }
    visit kittens_path
    expect(page).to have_content('Kitens')
  end

end
