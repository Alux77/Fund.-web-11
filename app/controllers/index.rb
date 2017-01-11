get '/' do
  @abuelita = abuelita(params[:abuelita]) if 
  params[:abuelita]

  erb :index
end 

post '/abuelita' do
user_input = params[:user_input]

if request.xhr?
  abuelita(user_input)
else
  redirect to ("/?abuelita=#{user_input}")
end
end

def abuelita(user_input)
  if user_input == "BYE TQM"
    "¡¡D'OH, ADIOS MIJITO!!"
  elsif user_input != user_input.upcase
    "NO, NO DESDE 1983"
  else
    "HUH?! NO TE ESCUCHO, HIJO!"
  end
end