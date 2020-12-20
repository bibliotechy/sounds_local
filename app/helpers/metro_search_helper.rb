module MetroSearchHelper

  @per_page = 100

  def location_query(params = {})
      if params.fetch(:q, nil)
        { :query =>  params[:q] }
      elsif params.fetch(:geo, nil)
        { :location => "geo:#{get_lat(params[:geo])},#{get_lng(params[:geo])}" }
      else
        throw ArgumentError 'Did not get enough parameters to search by location'
      end
  end

  def build_query(params)
    location_query(params).merge(:per_page => 100)
  end

  def get_lat(coordinates)
    get_coords(coordinates)[0]
  end

  def get_lng(coordinates)
    get_coords(coordinates)[1]
  end

  def get_coords(coordinates)
    @coords ||= coordinates.split(",")
  end

end
