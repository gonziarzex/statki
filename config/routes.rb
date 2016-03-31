Rails.application.routes.draw do
resources :flots do	
	resources :ships
	end
	root "flots#index"
end
