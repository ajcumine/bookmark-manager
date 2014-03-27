class Link

  include DataMapper::Resource
  
  has n, :tags, :through => Resource
  property :id,     Serial
  property :title,  String
  property :url,    String

  def self.tagged_as(tag)
    tag ? tag.links : []
  end

end