require 'rails_helper'

RSpec.describe HomeController do
  it 'routes home page to pages#index' do
    expect(get: '/').to route_to('home#index')
  end

  it 'generates / for root path' do
    expect(root_path).to eq('/')
  end
end
