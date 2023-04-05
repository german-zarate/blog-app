require 'rails_helper'

RSpec.describe UsersController, type: :request do
  describe 'GET #index' do
    it 'returns http success' do
      get '/users'
      expect(response).to have_http_status(:success)
    end

    it 'renders the index template' do
      get '/users'
      expect(response).to render_template(:index)
    end

    it 'includes the correct placeholder text in the response body' do
      get '/users'
      expect(response.body).to include('Users#index')
    end
  end

  describe 'GET #show' do
    it 'returns http success' do
      get '/users/1'
      expect(response).to have_http_status(:success)
    end

    it 'renders the show template' do
      get '/users/1'
      expect(response).to render_template(:show)
    end

    it 'includes the correct placeholder text in the response body' do
      get '/users/1'
      expect(response.body).to include('Users#show')
    end
  end
end