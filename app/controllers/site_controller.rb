class SiteController < ApplicationController
  def index
    begin
      all_objects = TheWalters::ArtObject.all
      random_object = all_objects["Items"].at(Random.rand(all_objects.length - 1))
      @random_image = random_object.PrimaryImage.Large.split("?").first
    rescue
    end
  end

  def item
    obj_num = params["object_number"]
    begin
      objs = TheWalters::ArtObject.get_all(objectNumber: obj_num)
      @art_object = objs["Items"].first
      @walters_url = "http://art.thewalters.org/detail/#{@art_object.ObjectID}"
      @pinterest_desc = "I saw this piece in person! '#{@art_object.Title}'"
      @twitter_tweet = "Saw this at the @walters_museum and I love it!"
      puts @art_object.Description
    rescue Exception => e
      flash[:notice] = e.message.split(":").first
      redirect_to root_url
    end
  end
end
