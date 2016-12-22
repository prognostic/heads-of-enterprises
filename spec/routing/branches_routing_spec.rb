require 'rails_helper'

RSpec.describe BranchesController, type: :routing do
  describe 'routing' do

    it 'routes to #index' do
      expect(get: '/control/branches').to route_to('branches#index')
    end

    it 'routes to #new' do
      expect(get: '/control/branches/new').to route_to('branches#new')
    end

    it 'routes to #show' do
      expect(get: '/control/branches/1').to route_to('branches#show', id: '1')
    end

    it 'routes to #edit' do
      expect(get: '/control/branches/1/edit').to route_to('branches#edit', id: '1')
    end

    it 'routes to #create' do
      expect(post: '/control/branches').to route_to('branches#create')
    end

    it 'routes to #update' do
      expect(put: '/control/branches/1').to route_to('branches#update', id: '1')
    end

    it 'routes to #destroy' do
      expect(delete: '/control/branches/1').to route_to('branches#destroy', id: '1')
    end

  end
end
