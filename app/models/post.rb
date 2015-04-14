class Post < ActiveRecord::Base
  attr_accessible :category_id, :title, :description, :content, :tag, :permalink
  belongs_to :category
  has_many :photos
  
  def self.search(query)
    where("tag like ?", "%#{query}%")
  end

  def to_param
	"#{id}-#{permalink}"
  end
end