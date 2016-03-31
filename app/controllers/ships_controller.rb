class ShipsController < ApplicationController
		before_action :set_ship, only: [:show, :edit, :update, :destroy]
		before_action :set_flot, only: [:show, :edit, :update, :destroy]

	def index 
		@ships = @flot.ships
	end
def edit

end

def destroy
    @ship.destroy
    respond_to do |format|
      format.html { redirect_to root_path, notice: 'Todo list was successfully destroyed.' }
end
end

def update
	if @ship.update(ship_params)
		redirect_to flot_path(@flot)
	else
		render 'edit'
	end
end

	def new

		@ship= Ship.new
	end

	def create
		@ship=@flot.ships.create(ship_params)
		redirect_to flot_ships_path(@flot.id, @ship.id)
	end



	def show
		
	end

	def set_ship
		@ship=Ship.find(params[:id])
	end

	def set_flot
		@flot=Flot.find(params[:flot_id])
	end

	private

	def ship_params
		params.require(:ship).permit(:gatunek,:liczba,:flot_id)
	end
end

