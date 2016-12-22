require 'rails_helper'

RSpec.describe CompaniesController, type: :routing do
  describe 'routing' do

    it 'routes to #index' do
      expect(get: '/control/companies').to route_to('companies#index')
    end

    it 'routes to #new' do
      expect(get: '/control/companies/new').to route_to('companies#new')
    end

    it 'routes to #show' do
      expect(get: '/control/companies/1').to route_to('companies#show', id: '1')
    end

    it 'routes to #edit' do
      expect(get: '/control/companies/1/edit').to route_to('companies#edit', id: '1')
    end

    it 'routes to #create' do
      expect(post: '/control/companies').to route_to('companies#create')
    end

    it 'routes to #update' do
      expect(put: '/control/companies/1').to route_to('companies#update', id: '1')
    end

    it 'routes to #destroy' do
      expect(delete: '/control/companies/1').to route_to('companies#destroy', id: '1')
    end

  end
end
