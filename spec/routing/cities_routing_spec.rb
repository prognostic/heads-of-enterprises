require 'rails_helper'

RSpec.describe CitiesController, type: :routing do
  describe 'routing' do

    it 'routes to #index' do
      expect(get: '/control/cities').to route_to('cities#index')
    end

    it 'routes to #new' do
      expect(get: '/control/cities/new').to route_to('cities#new')
    end

    it 'routes to #show' do
      expect(get: '/control/cities/1').to route_to('cities#show', id: '1')
    end

    it 'routes to #edit' do
      expect(get: '/control/cities/1/edit').to route_to('cities#edit', id: '1')
    end

    it 'routes to #create' do
      expect(post: '/control/cities').to route_to('cities#create')
    end

    it 'routes to #update' do
      expect(put: '/control/cities/1').to route_to('cities#update', id: '1')
    end

    it 'routes to #destroy' do
      expect(delete: '/control/cities/1').to route_to('cities#destroy', id: '1')
    end

  end
end
