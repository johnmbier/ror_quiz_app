class ManufacturersController < ApplicationController

  def index
    @manufacturers = Manufacturer.all
  end

  def show
  	@manufacturers = Manufacturer.all
end
