require 'spec_helper'

describe CurrentWeather do

  before(:all) do
    @openweather = CurrentWeather.new.single_location_service
    @openweather.get_single_weather('london','uk')
  end

  it "should return a float for lon" do
    expect(@openweather.get_lon).to be_a(Float)
  end

  it "should return a float for lat" do
    expect(@openweather.get_lat).to be_a(Float)
  end

  it "should return an integer for weather id" do
    expect(@openweather.get_weather_id).to be_a(Integer)
  end

  it "should return a string for main" do
    expect(@openweather.get_main).to be_a(String)
  end

  it "should return a string for description" do
    expect(@openweather.get_description).to be_a(String)
  end

  it "should return a string for icon" do
    expect(@openweather.get_icon).to be_a(String)
  end

  it "should return a string for base" do
    expect(@openweather.get_base).to be_a(String)
  end

  it "should return a float for temp" do
    expect(@openweather.get_temp).to be_a(Float)
  end

  it "should return an integer for pressure" do
    expect(@openweather.get_pressure).to be_a(Integer)
  end

  it "should return an integer for humidity" do
    expect(@openweather.get_humidity).to be_a(Integer)
  end

  it "should return a float for temp_min" do
    expect(@openweather.get_temp_min).to be_a(Float)
  end

  it "should return a float for temp_max" do
    expect(@openweather.get_temp_max).to be_a(Float)
  end

  it "should return an integer for visibility" do
    expect(@openweather.get_visibility).to be_a(Integer)
  end

  it "should return a float for wind_speed" do
    expect(@openweather.get_wind_speed).to be_a(Float)
  end

  it "should return an integer for deg" do
    expect(@openweather.get_wind_deg).to be_a(Integer)
  end

  it "should return an integer for clouds" do
    expect(@openweather.get_clouds).to be_a(Integer)
  end

  it "should return an integer for dt" do
    expect(@openweather.get_dt).to be_a(Integer)
  end

  it "should return an integer for sys_type" do
    expect(@openweather.get_sys_type).to be_a(Integer)
  end

  it "should return an integer for sys_id" do
    expect(@openweather.get_sys_id).to be_a(Integer)
  end

  it "should return a float for sys_message" do
    expect(@openweather.get_sys_message).to be_a(Float)
  end

  it "should return a string for sys_country" do
    expect(@openweather.get_sys_country).to be_a(String)
  end

  it "should return an integer for sys_sunrise" do
    expect(@openweather.get_sys_sunrise).to be_a(Integer)
  end

  it "should return an integer for sys_sunset" do
    expect(@openweather.get_sys_sunset).to be_a(Integer)
  end

  it "should return an integer for sys_id" do
    expect(@openweather.get_sys_id).to be_a(Integer)
  end

  it "should return a string for name" do
    expect(@openweather.get_name).to be_a(String)
  end

  it "should return an integer for cod" do
    expect(@openweather.get_cod).to be_a(Integer)
  end

end
