class Comment < ApplicationRecord
  validates :body, length: { minimum: 10 }
  belongs_to :user
  belongs_to :post
end
