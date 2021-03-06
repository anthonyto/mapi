class MealsController < ApplicationController

  # GET /meals
  # GET /index.rabl
  def index
    @meals = Meal.where(created_at: (7.minutes.ago..Time.now))
    # @meals = Meal.all
    # render json: @meals
  end
  
  # GET /meals/1
  # GET /meals/show.rabl
  def show 
    @meal = Meal.where(id: params[:id])
  end
  
  # GET /meals/requested
  # GET /requested.rabl
  def requested
    @requested_meals = Meal.where(type: "requested")
  end
  
  # GET /meals/offered
  # GET /offered.rabl
  def offered
    @offered_meals = Meal.where(type: "offered")
  end
  
  # POST /meals
  # POST /meals.rabl
  # curl -d '{"name":"test", "type":"offered", "email":"foo@bar.com"}' localhost:3000/meals  -H "Content-Type:application/json"
  def create
    @meal = Meal.new(meal_params)
    
    respond_to do |format|
      if @meal.save
        format.json { render action: 'show', status: :created, location: @meal }
      else
        format.json { render json: @meal.errors, status: :unprocessable_entity }
      end
    end
  end
  
  private 

  
  def meal_params
    # params.require(:meal).permit(:name, :type, :email, :lat, :long, :address, :description, :plates)
    params.require(:meal).permit!
  end
    
end

