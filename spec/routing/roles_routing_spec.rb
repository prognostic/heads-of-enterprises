require 'rails_helper'

RSpec.describe RolesController, type: :routing do
  describe 'routing' do

    it 'routes to #index' do
      expect(get: '/control/roles').to route_to('roles#index')
    end

    it 'routes to #new' do
      expect(get: '/control/roles/new').to route_to('roles#new')
    end

    it 'routes to #show' do
      expect(get: '/control/roles/1').to route_to('roles#show', id: '1')
    end

    it 'routes to #edit' do
      expect(get: '/control/roles/1/edit').to route_to('roles#edit', id: '1')
    end

    it 'routes to #create' do
      expect(post: '/control/roles').to route_to('roles#create')
    end

    it 'routes to #update via PUT' do
      expect(put: '/control/roles/1').to route_to('roles#update', id: '1')
    end

    it 'routes to #update via PATCH' do
      expect(patch: '/control/roles/1').to route_to('roles#update', id: '1')
    end

    it 'routes to #destroy' do
      expect(delete: '/control/roles/1').to route_to('roles#destroy', id: '1')
    end

  end
end
