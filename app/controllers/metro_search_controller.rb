require 'songkickr'

class MetroSearchController < ApplicationController

  attr_reader :sk, :per_page

  def initialize
    @@sk = Songkickr::Remote.new config.songkick_api[:api_key]
    @per_page =  100
  end


  def index
  end

  def search
    sk.location_search build_query(params)
  end




end
