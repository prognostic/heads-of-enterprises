require 'rails_helper'

RSpec.describe FacesController, type: :routing do
  describe 'routing' do

    it 'routes to #index' do
      expect(get: '/control/faces').to route_to('faces#index')
    end

    it 'routes to #new' do
      expect(get: '/control/faces/new').to route_to('faces#new')
    end

    it 'routes to #show' do
      expect(get: '/control/faces/1').to route_to('faces#show', id: '1')
    end

    it 'routes to #edit' do
      expect(get: '/control/faces/1/edit').to route_to('faces#edit', id: '1')
    end

    it 'routes to #create' do
      expect(post: '/control/faces').to route_to('faces#create')
    end

    it 'routes to #update' do
      expect(put: '/control/faces/1').to route_to('faces#update', id: '1')
    end

    it 'routes to #destroy' do
      expect(delete: '/control/faces/1').to route_to('faces#destroy', id: '1')
    end

  end
end
