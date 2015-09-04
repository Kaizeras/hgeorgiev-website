class Post < ActiveRecord::Base
   extend FriendlyId
  friendly_id :title,  use: :slugged
 validates_presence_of :title
 validates_presence_of :description
 #associations
 has_many :taggings
 has_many :tags, through: :taggings

 #tag methods

  def all_tags=(names)
   self.tags = names.split(",").map do |name|
     Tag.where(name: name.strip).first_or_create!
   end
  end


  def all_tags
   self.tags.map(&:name).join(", ")
  end

  def self.tagged_with(name)
    Tag.find_by_name!(name).posts
  end
end
