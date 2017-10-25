class CorsairsController < ApplicationController
  def index
  	@corsairs = Corsair.all
  end

  def new
  end

  def create
  	@corsair = Corsair.create(corsair_params)
  	redirect_to @corsair
  end

  def edit
  	@corsair = Corsair.find(params[:id])
  end

  def update
  	@corsair = Corsair.find(params[:id])
  	@corsair.update(corsair_params)
  	redirect_to corsairs_path
  	
  end

  def show
  	@corsair = Corsair.find(params[:id])
  end

  def destroy
  	@corsair = Corsair.find(params[:id])
  	@corsair.destroy
  	redirect_to corsairs_path

  	
  end
end

private

    def corsair_params

        params.require(:corsair).permit( :firstname, :age, :bio, :slack_handle, :github_handle)
        
    end
