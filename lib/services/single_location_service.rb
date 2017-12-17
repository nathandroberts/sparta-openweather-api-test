require "httparty"
require "json"

class SingleLocationService
  include HTTParty

  attr_accessor

  base_uri 'http://samples.openweathermap.org/data/2.5'

  def get_single_weather(city, country)
    @single_weather_data = JSON.parse(self.class.get("/weather?q=#{city},#{country}&appid=35a6a88d225e6d501fed34c3ca9201a4").body)
  end

  def get_lon
    @single_weather_data['coord']['lon']
  end

  def get_lat
    @single_weather_data['coord']['lat']
  end

  def get_weather_id
    @single_weather_data['weather'][0]["id"]
  end

  def get_main
    @single_weather_data['weather'][0]["main"]
  end

  def get_description
    @single_weather_data['weather'][0]["description"]
  end

  def get_icon
    @single_weather_data['weather'][0]["icon"]
  end

  def get_base
    @single_weather_data['base']
  end

  def get_temp
    @single_weather_data['main']["temp"]
  end

  def get_pressure
    @single_weather_data['main']["pressure"]
  end

  def get_humidity
    @single_weather_data['main']["humidity"]
  end

  def get_temp_min
    @single_weather_data['main']["temp_min"]
  end

  def get_temp_max
    @single_weather_data['main']["temp_max"]
  end

  def get_visibility
    @single_weather_data["visibility"]
  end

  def get_wind_speed
    @single_weather_data["wind"]['speed']
  end

  def get_wind_deg
    @single_weather_data["wind"]['deg']
  end

  def get_clouds
    @single_weather_data["clouds"]['all']
  end

  def get_dt
    @single_weather_data["dt"]
  end

  def get_sys_type
    @single_weather_data["sys"]['type']
  end

  def get_sys_id
    @single_weather_data["sys"]['id']
  end

  def get_sys_message
    @single_weather_data["sys"]['message']
  end

  def get_sys_country
    @single_weather_data["sys"]['country']
  end

  def get_sys_sunrise
    @single_weather_data["sys"]['sunrise']
  end

  def get_sys_sunset
    @single_weather_data["sys"]['sunset']
  end

  def get_id
    @single_weather_data["id"]
  end

  def get_name
    @single_weather_data["name"]
  end

  def get_cod
    @single_weather_data["cod"]
  end

end
x = SingleLocationService.new
p '------------------------------------------------------------'
p x.get_single_weather('london','uk')
p '------------------------------------------------------------'
# p x.get_single_weather('london','uk')['weather']
# p '------------------------------------------------------------'
# p x.get_single_weather('london','uk')['weather'][0]["main"]
# p '------------------------------------------------------------'
