class Book < ActiveRecord::Base
  # has_many :reviews

  validates :title, presence: true
  validates :author, presence: true
  validates :isbn, presence: true

end
