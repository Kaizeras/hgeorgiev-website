class Tag < ActiveRecord::Base
  has_many :taggings
  has_many :posts, through: :taggings

  def self.counts()
    self.joins(:taggings).select('tags.*, count(tag_id) as "count"').group("tags.id").order('count desc')
  end
end
