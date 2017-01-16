get '/' do

  erb :index
  # Deja a los usuarios crear una URL reducida y despliega una lista de URLs. 
end

post '/urls' do
  # crea una nueva Url
end

# e.g., /q6bda
get '/:short_url' do
  # redirige a la URL original
  url = Url.find_by(short_url: params[:short_url])
  url.increment(:click_count).save
  redirect to url.long_url
end