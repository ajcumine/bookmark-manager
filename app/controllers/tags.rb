get '/tags/:text' do |tag_text|
  tag = Tag.first(:text => tag_text)
  @tags = [tag]
  @links = Link.tagged_as(tag)
  erb :index
end 