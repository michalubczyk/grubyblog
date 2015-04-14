class Category < ActiveRecord::Base
  attr_accessible :name, :permalink
  has_many :posts

  def to_param
	"#{id}-#{permalink}"
  end	
end
