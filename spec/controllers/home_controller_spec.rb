require 'rails_helper'

RSpec.describe HomeController do
  describe 'GET index' do
    def do_get
      get :index
    end

    it 'returns http success' do
      do_get
      expect(response).to have_http_status(:success)
    end

    it 'returns the index template' do
      do_get
      expect(response).to render_template('index')
    end
  end
end