class LandmarksController < ApplicationController

  get '/landmarks' do
    erb :'/landmarks/index'
  end

  get '/landmarks/new' do
    erb :'/landmarks/new'
  end

  get '/landmarks/:id' do
    @landmark = Landmark.find_by_id(params[:id])

    erb :'/landmarks/show'
  end

  post '/landmarks' do
    @landmark = Landmark.new(name: params[:landmark][:name], year_completed: params[:landmark][:year_completed])
    @landmark.save

    redirect to "/landmarks/#{landmark.id}"
  end

end
