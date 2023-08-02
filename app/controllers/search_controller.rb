
class SearchController < ApplicationController
    def search
      @query = params[:query]
      @results = []
  
      if @query.present?
        solr = RSolr.connect(url: 'http://localhost:8983/solr/gettingstarted')
        response = solr.get('select', params: { q: @query })
        @results = response['response']['docs']
      end
    end
  end
  


  