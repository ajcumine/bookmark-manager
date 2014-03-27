get '/' do
  @tags = Tag.all
  @links = Link.all
  erb :index
end