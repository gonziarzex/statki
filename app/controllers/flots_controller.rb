class FlotsController < ApplicationController
	before_action :set_flot, only: [:show, :edit, :update, :destroy]

	def index 
		@flots = Flot.all
	end

	def edit
			
	end



	def new
		@flot= Flot.new
	end

	def create# parametry są postem POST dlatego nie mamy widoku create są przesyłąne niewidocznie
		@flot= Flot.new(flot_params)#parametry przekazane po kliknięciu wyślij
		respond_to do |format|

		if @flot.save 
			format.html {redirect_to @flot, notice: 'Stworzono flotę'} # odpowiadamy na zapytanie co zrobić z modelem stworzonym htmlem 
		else
			format.html{render 'new'}
		end
	end
	end

	def update
		respond_to do |format|

		if @flot.update(flot_params) 
			format.html {redirect_to @flot, notice: 'Zmodyfikowano flotę'} # odpowiadamy na zapytanie co zrobić z modelem stworzonym htmlem 
		else
			format.html{render 'new'}
		end
	end
	end
def destroy
    @flot.destroy
    respond_to do |format|
      format.html { redirect_to root_path, notice: 'Todo list was successfully destroyed.' }
end
end


	def show 
		@ships_count=@flot.ships.count
		@ships_ammount=@flot.ships.sum(:liczba)

		

	end


	def set_flot
		@flot=Flot.find(params[:id])
	end

	private

	def flot_params
		params.require(:flot).permit(:nazwa,:liczba,:dostenosc)#flot to jest symbol modelu Flot
	end
end
