Rails.application.routes.draw do
	get '/veiculos', to: 'veiculos#index'
	get '/veiculos/:id', to: 'veiculos#show'
	post '/veiculos', to: 'veiculos#create'
	put '/veiculos/:id', to: 'veiculos#update'
	delete '/veiculos/:id', to: 'veiculos#destroy'
end
