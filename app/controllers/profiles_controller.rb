class ProfilesController < ApplicationController

  def show
    @profile = Unirest.get("http://localhost:3000/profiles/#{params[:id]}.json").body
  end

  def create
    @profile = Unirest.post(
      "http://localhost:3000/profiles/.json",
      headers: { "Accept" => "profile/json" },
      parameters: {
        name: params[:name],
        description: params[:description],
        url: params[:url],
        screenshot_url: params[:screenshot_url],
        student_id: params[:student_id]
      }
    ).body
    redirect_to '/profiles/#{@profile["id"]'  
  end

  def edit
    @profile = Unirest.get("http://localhost:3000/profiles/#{params[:id]}.json").body 
  end

  def update
    @profile = Unirest.patch(
      "http://localhost:3000/profiles/#{params[:id]}.json",
      headers: {"Accept" => "application/json"},
      parmeters: {
        name: params[:name],
        description: params[:description],
        url: params[:url],
        screenshot_url: params[:screenshot_url],
        student_id: params[:student_id]
        }
    ).body
    redirect_to "/profiles/#{@profile['id']}"
  end
end
