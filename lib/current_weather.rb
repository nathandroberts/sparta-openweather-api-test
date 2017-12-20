
require_relative 'services/single_location_service'
require_relative 'services/multiple_location_service'
require 'json'

class CurrentWeather
  def single_location_service
    SingleLocationService.new
  end


  def multiple_location_service

  end
end
