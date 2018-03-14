class Comment < ActiveRecord::Base
  belongs_to :recipe
  validates :body, length: { in: 1..255 }
  validates :recipe_id, presence: true
end
