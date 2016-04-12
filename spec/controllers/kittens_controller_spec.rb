require 'rails_helper'

RSpec.describe KittensController do

   before :each do
    u = FactoryGirl.create(:user)
    allow_any_instance_of(ApplicationController).to receive(:current_user).and_return(u)
   end

   describe '#index' do
    it 'renders the index template' do
      get :index
      expect(response).to render_template(:index)
    end

    it 'assigns a list of kittens' do
      k1 = FactoryGirl.create(:kitten, name: 'Jimmy')
      k2 = FactoryGirl.create(:kitten, name: 'Abigail')
      get :index
      expect(assigns(:kittens)).to eq([k2, k1])
    end
   end

   describe '#show' do
    it 'renders the show template' do
      k = FactoryGirl.create(:kitten)
      get :show, id: k.id
      expect(response).to render_template(:show)
    end

    it 'loads the relevant kitten' do
      k = FactoryGirl.create(:kitten)
      get :show, id: k.id
      expect(assigns(:kitten)).to eq(k)
    end
   end
end