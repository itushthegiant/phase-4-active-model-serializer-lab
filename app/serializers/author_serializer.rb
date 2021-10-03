class AuthorSerializer < ActiveModel::Serializer
  attributes :name, :posts

  
  belongs_to :profile

  def posts
    self.object.posts.map {|post| {title: post.title, short_content: "#{post.content[0..39]...}", tags: post.tags}}
  end
end
