require 'rack-flash'

class ApplicationController < Sinatra::Base
  register Sinatra::ActiveRecordExtension

  enable :sessions
  set :session_secret, "my_application_secret"
  set :views, Proc.new { File.join(root, "../views/") }

  get '/' do
    erb :index
  end

  # __________________________________________
  # This did not work with inheritance from ApplicationController so I had to put here to pass test and then comment out. Weird!
  
  # use Rack::Flash

  # get '/songs' do
  #   @songs = Song.all
  #   erb :'/songs/index'
  # end

  # get '/songs/new' do
  #   erb :'/songs/new'
  # end

  # get '/songs/:slug' do
  #   @song = Song.find_by_slug(params[:slug])

  #   erb :'songs/show'
  # end

  # post '/songs' do
  #   @song = Song.create(params[:song])
  #   @song.artist = Artist.find_or_create_by(name: params[:artist][:name])
  #   @song.genre_ids = params[:genres]
  #   @song.save

  #   flash[:message] = "Successfully created song."
  #   redirect("/songs/#{@song.slug}")
  # end

  # get '/songs/:slug/edit' do
  #   @song = Song.find_by_slug(params[:slug])
  #   erb :'songs/edit'
  # end

  # patch '/songs/:slug' do
  #   @song = Song.find_by_slug(params[:slug])
  #   @song.update(params[:song])
  #   @song.artist = Artist.find_or_create_by(name: params[:artist][:name])
  #   @song.genre_ids = params[:genres]
  #   @song.save

  #   flash[:message] = "Successfully updated song."
  #   redirect("/songs/#{@song.slug}")
  # end 

  # get '/genres' do
  #   @genres = Genre.all
  #   erb :'genres/index'
  # end

  # get '/genres/:slug' do
  #   @genre = Genre.find_by_slug(params[:slug])
  #   erb :'/genres/show'
  # end

  # get '/artists' do
  #   @artists = Artist.all
  #   erb:'artists/index'
  # end

  # get '/artists/:slug' do
  #   @artist = Artist.find_by_slug(params[:slug])
  #   erb :'artists/show'
  # end
#_______________________________________________
 

end