class Review < ActiveRecord::Base
  belongs_to :book

  validates :rating, presence: true
  validates :rating, numericality: { only_integer: true}
  validates :rating, inclusion: {in: 1..5}
  validates :body, presence: true

  validates :book_id, presence: true
end
