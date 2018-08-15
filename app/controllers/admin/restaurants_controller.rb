class Admin::RestaurantsController < ApplicationController
  def index
    @restaurants = Restaurant.all
  end

  def edit
    @restaurant = Restaurant.find(params[:id])
  end

  def update
    @restaurant = Restaurant.find(params[:id])
    if @restaurant.update(params_restaurant)
      redirect_to admin_restaurants_path
    else
      render :edit
    end
  end

  def destroy
    @restaurant = Restaurant.find(params[:id])
    @restaurant.destroy

    redirect_to admin_restaurants_path
  end

  private

  def params_restaurant
    params.require(:restaurant).permit(:name, :phone_number, :address, :category)
  end
end
