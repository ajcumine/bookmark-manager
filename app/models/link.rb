class Link

  include DataMapper::Resource
  

  property :id,     Serial
  property :title,  String
  property :url,    String
  
  has 1, :user, through: Resource
  has n, :tags, through: Resource
  
  def self.tagged_as(tag)
    tag ? tag.links : []
  end

end