# Homepage (Root path)
get '/' do
  erb :index
end

get '/tracks' do
  @tracks = Track.all
  erb :'tracks/index'
end

get '/tracks/new' do
  erb :'tracks/new'
end

post '/tracks/new' do
  @track = Track.new(
    author:   params[:author],
    title:    params[:title],
    url:      params[:url]
  )
  @track.save ? (redirect '/tracks') : (erb :'tracks/new')
end

get '/tracks/:id' do
  @track = Track.find params[:id]
  erb :'tracks/show'
end