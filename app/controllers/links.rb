post '/links' do
  url = params['url']
  title = params['title']
  tags = params['tags'].split(' ').map{|tag| Tag.first_or_create(:text => tag)}
  user = current_user
  Link.create(:url => url, :title => title, :tags => tags, :user => user)
  redirect to('/')
end

get '/links/new' do
  erb :'links/new'
end