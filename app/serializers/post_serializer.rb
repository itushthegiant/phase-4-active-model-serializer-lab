class PostSerializer < ActiveModel::Serializer
  attributes :title, :content, :author


  has_many :tags
  
  def author
    {name: self.object.author.name}
  end
 
end
